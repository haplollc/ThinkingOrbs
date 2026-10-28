//
//  PublicAPITests.swift
//  ThinkingOrbsTests
//
//  The public surface: names and labels match the web library, the public
//  geometry is exactly what the view draws, and the views render.
//

import SwiftUI
import Testing
@testable import ThinkingOrbs

struct PublicAPITests {

    @Test func designsMatchTheWebLibrary() {
        #expect(OrbDesign.allCases.map(\.rawValue) == [
            "working", "searching", "solving", "listening", "connecting",
            "weaving", "composing", "breathing", "shaping",
        ])
        // the web component's per-state aria-labels
        #expect(OrbDesign.allCases.map(\.accessibilityLabel) == [
            "Working…", "Searching…", "Solving…", "Listening…", "Connecting…",
            "Weaving…", "Composing…", "Thinking…", "Shaping…",
        ])
        #expect(OrbDesign.searching.title == "Searching")
        #expect(OrbSize.regular.points == 64)
        #expect(OrbSize.small.points == 20)
    }

    @Test func designSummariesMatchTheWebLibrary() {
        #expect(OrbDesign.allCases.map(\.summary) == [
            "Particles on tilted orbits",
            "A scan meridian sweeps a dotted globe",
            "Bands scramble, then click back solved",
            "A waveform rolls through the rings",
            "A constellation wires itself",
            "Three strands plait around the sphere",
            "An undulating multi-band sash",
            "A ring slowly morphing",
            "Circle → triangle → square",
        ])
    }

    @Test(arguments: OrbDesign.allCases, OrbSize.allCases)
    func publicFrameIsWhatTheViewDraws(design: OrbDesign, size: OrbSize) {
        let resolved = OrbPresets.resolve(design, size)
        for time in [0.0, 0.25, 1.9, 7.3] {
            let viaPublic = design.frame(size: size, at: time)
            let viaEngine = resolved.frame(size: size.length, t: time * resolved.speed)
            #expect(viaPublic.dots == viaEngine.dots)
            #expect(viaPublic.lines == viaEngine.lines)
            // finished draw list: z-sorted far → near, nothing invisible left
            #expect(zip(viaPublic.dots, viaPublic.dots.dropFirst()).allSatisfy { $0.z <= $1.z })
            #expect(viaPublic.dots.allSatisfy { $0.a >= 0.02 && $0.r > 0 })
            #expect(!viaPublic.dots.isEmpty)
        }
    }

    /// Any time a caller can produce is safe: before the clock's origin, after
    /// days of uptime, or not a number at all.
    @Test(arguments: OrbDesign.allCases, OrbSize.allCases)
    func anyTimeIsSafe(design: OrbDesign, size: OrbSize) {
        for time in [-0.01, -1, -7.3, -1e6, 0, 86_400 * 3, 1e9, .nan, .infinity, -.infinity] {
            let frame = design.frame(size: size, at: time)
            #expect(!frame.dots.isEmpty, "\(design) \(size) at \(time)")
            #expect(frame.dots.allSatisfy { $0.x.isFinite && $0.y.isFinite && $0.r.isFinite })
        }
    }

    /// A string literal must pick the localized initializer, like Text's, and a
    /// String value must be shown as-is.
    @Test @MainActor
    func literalTitlesAreLocalized() {
        let literal = ThinkingOrbLabel("Thinking…", design: .breathing)
        let value: String = "Thinking…"
        let verbatim = ThinkingOrbLabel(value, design: .breathing)
        #expect(String(describing: literal.title).contains("Localized"))
        #expect(!String(describing: verbatim.title).contains("Localized"))
    }

    @Test @MainActor
    func viewsRenderInBothInks() throws {
        func meanLuma(_ scheme: ColorScheme) throws -> Double {
            let view = ThinkingOrb(.composing)
                .background(scheme == .dark ? Color.black : Color.white)
                .environment(\.colorScheme, scheme)
                .environment(\.orbClockOverride, 1.25)
            let renderer = ImageRenderer(content: view)
            renderer.scale = 1
            let image = try #require(renderer.cgImage)
            #expect(image.width == 64 && image.height == 64)
            let space = CGColorSpaceCreateDeviceGray()
            let ctx = try #require(CGContext(data: nil, width: 64, height: 64, bitsPerComponent: 8,
                                             bytesPerRow: 64, space: space, bitmapInfo: CGImageAlphaInfo.none.rawValue))
            ctx.draw(image, in: CGRect(x: 0, y: 0, width: 64, height: 64))
            let pixels = UnsafeBufferPointer(start: ctx.data!.assumingMemoryBound(to: UInt8.self), count: 64 * 64)
            return Double(pixels.reduce(0) { $0 + Int($1) }) / Double(pixels.count) / 255
        }
        let light = try meanLuma(.light)
        let dark = try meanLuma(.dark)
        // dark ink on white pulls the mean down; light ink on black pushes it up
        #expect(light < 0.97 && light > 0.3)
        #expect(dark > 0.03 && dark < 0.7)

        // the label and a resized orb lay out at their stated sizes
        let label = ImageRenderer(content: ThinkingOrbLabel("Thinking…", design: .breathing)
            .environment(\.orbClockOverride, 0.5))
        #expect((label.cgImage?.height ?? 0) >= 20)
        let resized = ImageRenderer(content: ThinkingOrb(.solving, diameter: 56)
            .environment(\.orbClockOverride, 0.5))
        resized.scale = 1
        #expect(resized.cgImage?.width == 56)
    }
}
