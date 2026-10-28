# ThinkingOrbs
Dotted, genuinely 3D loading indicators for AI and agent interfaces in SwiftUI: nine hand-tuned designs, two tuned sizes, one line to drop in.

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/banner-dark.gif">
    <img src="assets/banner-light.gif" width="864" alt="All nine ThinkingOrbs designs animating side by side">
  </picture>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white" alt="Swift 6" />
  <img src="https://img.shields.io/badge/iOS-17+-000000?logo=apple&logoColor=white" alt="iOS 17+" />
  <img src="https://img.shields.io/badge/macOS%20%C2%B7%20tvOS%20%C2%B7%20watchOS%20%C2%B7%20visionOS-supported-000000?logo=apple&logoColor=white" alt="macOS, tvOS, watchOS and visionOS" />
  <img src="https://img.shields.io/badge/SPM-compatible-brightgreen" alt="Swift Package Manager" />
  [![GitHub stars](https://img.shields.io/github/stars/haplollc/ThinkingOrbs?style=flat)](https://github.com/haplollc/ThinkingOrbs/stargazers)
  [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
</p>

<p align="center">
  <a href="https://buymeacoffee.com/jcbuilds"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" width="200"></a>
  <br>
  <sub>If ThinkingOrbs is useful to you, a coffee keeps it going.</sub>
</p>

**Install**

```swift
dependencies: [
    .package(url: "https://github.com/haplollc/ThinkingOrbs", from: "1.0.0")
]
```

**Try it**

```swift
import SwiftUI
import ThinkingOrbs

struct AssistantStatus: View {
    var body: some View {
        ThinkingOrbLabel("Searching the web…", design: .searching)
    }
}
```

If this is useful, a star helps others find it.

---

That is the whole integration. Eight of the nine designs are real 3D forms, rotated, depth-shaded and z-sorted, and the ninth is a morphing outline. All of them are drawn only in grayscale dots, so they sit quietly in any interface, light or dark. Every orb pauses itself offscreen, stays in phase with the others on screen, and respects Reduce Motion.

**[Download the 30-second demo video (MP4)](assets/demo.mp4)**

## Installation

In Xcode: **File > Add Package Dependencies** and paste

```
https://github.com/haplollc/ThinkingOrbs
```

Or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/haplollc/ThinkingOrbs", from: "1.0.0")
]
```

Then add `ThinkingOrbs` to your target's dependencies.

## Quick start

```swift
import SwiftUI
import ThinkingOrbs

struct AssistantStatus: View {
    var body: some View {
        ThinkingOrbLabel("Searching the web…", design: .searching)
    }
}
```

## The designs

Every design is a case of `OrbDesign`. Pick the one that says what your agent is actually doing.

| Regular | Small | Design | In code | Reach for it when |
|:---:|:---:|---|---|---|
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/working-regular-dark.gif"><img src="assets/designs/working-regular-light.gif" width="96" alt="Working, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/working-small-dark.gif"><img src="assets/designs/working-small-light.gif" width="30" alt="Working, small"></picture> | **Working**<br><sub>Particles on tilted orbits</sub> | `.working` | General-purpose busy |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/searching-regular-dark.gif"><img src="assets/designs/searching-regular-light.gif" width="96" alt="Searching, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/searching-small-dark.gif"><img src="assets/designs/searching-small-light.gif" width="30" alt="Searching, small"></picture> | **Searching**<br><sub>A scan meridian sweeps a dotted globe</sub> | `.searching` | Web search, retrieval, lookups |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/solving-regular-dark.gif"><img src="assets/designs/solving-regular-light.gif" width="96" alt="Solving, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/solving-small-dark.gif"><img src="assets/designs/solving-small-light.gif" width="30" alt="Solving, small"></picture> | **Solving**<br><sub>Bands scramble, then click back solved</sub> | `.solving` | Reasoning, math, code |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/listening-regular-dark.gif"><img src="assets/designs/listening-regular-light.gif" width="96" alt="Listening, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/listening-small-dark.gif"><img src="assets/designs/listening-small-light.gif" width="30" alt="Listening, small"></picture> | **Listening**<br><sub>A waveform rolls through the rings</sub> | `.listening` | Voice input, transcription |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/connecting-regular-dark.gif"><img src="assets/designs/connecting-regular-light.gif" width="96" alt="Connecting, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/connecting-small-dark.gif"><img src="assets/designs/connecting-small-light.gif" width="30" alt="Connecting, small"></picture> | **Connecting**<br><sub>A constellation wires itself</sub> | `.connecting` | Tool calls, APIs, sync |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/weaving-regular-dark.gif"><img src="assets/designs/weaving-regular-light.gif" width="96" alt="Weaving, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/weaving-small-dark.gif"><img src="assets/designs/weaving-small-light.gif" width="30" alt="Weaving, small"></picture> | **Weaving**<br><sub>Three strands plait around the sphere</sub> | `.weaving` | Planning, multi-step agents |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/composing-regular-dark.gif"><img src="assets/designs/composing-regular-light.gif" width="96" alt="Composing, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/composing-small-dark.gif"><img src="assets/designs/composing-small-light.gif" width="30" alt="Composing, small"></picture> | **Composing**<br><sub>An undulating multi-band sash</sub> | `.composing` | Writing a reply |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/breathing-regular-dark.gif"><img src="assets/designs/breathing-regular-light.gif" width="96" alt="Breathing, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/breathing-small-dark.gif"><img src="assets/designs/breathing-small-light.gif" width="30" alt="Breathing, small"></picture> | **Breathing**<br><sub>A ring slowly morphing</sub> | `.breathing` | Idle thinking, waiting on a model |
| <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/shaping-regular-dark.gif"><img src="assets/designs/shaping-regular-light.gif" width="96" alt="Shaping, regular"></picture> | <picture><source media="(prefers-color-scheme: dark)" srcset="assets/designs/shaping-small-dark.gif"><img src="assets/designs/shaping-small-light.gif" width="30" alt="Shaping, small"></picture> | **Shaping**<br><sub>Circle → triangle → square</sub> | `.shaping` | Design, image and layout work |

```swift
ThinkingOrb(.connecting)

ForEach(OrbDesign.allCases) { design in      // all nine, with names
    Label { Text(design.title) } icon: { ThinkingOrb(design, size: .small) }
}
```

## Sizes

Two tuned sizes, and they are separate designs, not one design scaled: the small one has fewer, bigger dots and its own tempo, so it stays legible next to text.

```swift
ThinkingOrb(.working)                  // .regular: 64 pt, for avatars, empty states, hero moments
ThinkingOrb(.working, size: .small)    // .small: 20 pt, for inline text, toolbars, list rows
ThinkingOrb(.solving, diameter: 56)    // the 64 pt design, drawn at 56 pt
```

## Status labels

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/labels-dark.gif">
    <img src="assets/labels-light.gif" width="400" alt="A Thinking pill and four status chips, their text shimmering">
  </picture>
</p>

`ThinkingOrbLabel` puts an orb beside a shimmering status line. Style it like any other view:

```swift
ThinkingOrbLabel("Searching the web…", design: .searching)

ThinkingOrbLabel("Thinking…", design: .composing, size: .regular, diameter: 48)
    .font(.title3)
    .padding(8)
    .padding(.trailing, 20)
    .background(.thinMaterial, in: .capsule)
```

The shimmer is a modifier too, for any text that should read as live:

```swift
Text("Composing a reply…")
    .thinkingShimmer()
```

Titles localize the way `Text` does. A string literal is looked up in your strings, a `String` value is shown as-is, and you can pass your own `Text`:

```swift
ThinkingOrbLabel("Searching the web…", design: .searching)                   // localized, like Text
ThinkingOrbLabel("status.syncing", tableName: "Agent", design: .connecting)   // from your own table
ThinkingOrbLabel(modelOutput, design: .composing)                             // a String shows as-is
```

## Recipes

**Map your agent's state to a design.** Wrap it in a `ZStack` so the old and new orb share one slot while they crossfade:

```swift
enum AgentPhase {
    case idle, searching, reasoning, callingTools, writing

    var orb: OrbDesign {
        switch self {
        case .idle: .breathing
        case .searching: .searching
        case .reasoning: .solving
        case .callingTools: .connecting
        case .writing: .composing
        }
    }
}

ZStack {
    ThinkingOrb(phase.orb)
        .id(phase.orb)
        .transition(.opacity.animation(.easeInOut(duration: 0.25)))
}
```

**An "assistant is typing" bubble:**

```swift
HStack(alignment: .bottom, spacing: 10) {
    ThinkingOrb(.composing, diameter: 36)
    Text("Writing a reply…")
        .thinkingShimmer()
        .padding(.horizontal, 14)
        .padding(.vertical, 10)
        .background(.fill.tertiary, in: .rect(cornerRadius: 18))
}
```

**A status in the navigation bar:**

```swift
.toolbar {
    ToolbarItem(placement: .principal) {
        ThinkingOrbLabel("Syncing…", design: .connecting)
            .font(.subheadline)
    }
}
```

**A button that is busy:**

```swift
Button {
    Task { await generate() }
} label: {
    if isGenerating {
        ThinkingOrbLabel("Generating…", design: .shaping)
    } else {
        Label("Generate", systemImage: "sparkles")
    }
}
.buttonStyle(.bordered)
```

**An empty state while a model loads:**

```swift
ContentUnavailableView {
    ThinkingOrb(.breathing)
} description: {
    Text("Warming up the model…")
}
```

**A list row:**

```swift
LabeledContent("Indexing photos") {
    ThinkingOrb(.searching, size: .small)
}
```

## Appearance

The ink is strictly monochrome and follows the environment's color scheme: dark dots on light backgrounds, light dots on dark ones, with the depth shading mirrored so near dots always read strongest. To put an orb on a surface that doesn't match the app's scheme, pin it:

```swift
ThinkingOrb(.weaving)
    .environment(\.colorScheme, .dark)   // light dots, for a dark card in a light app
```

## Speed and pausing

```swift
ThinkingOrb(.listening, speed: 1.5)                 // a multiplier on the tuned speed
ThinkingOrb(.listening, isPaused: !isRecording)     // freezes on the current frame
```

## Accessibility

- Each orb is an image with a per-design VoiceOver label ("Searching…"). The defaults are English, so in a localized app, or anywhere a more specific label helps, set your own as usual: `.accessibilityLabel("Looking up flights…")`.
- `ThinkingOrbLabel` reads as one element: its title.
- With Reduce Motion on, orbs show a single representative frame and shimmering text holds still at full strength. With Increase Contrast on, shimmering text also stays at full strength.

## Performance

One `Canvas` per orb inside one `TimelineView`, with no view per dot. Orbs park their timeline while scrolled out of view, on either axis, so a card in a carousel that has itself scrolled off the page stops too. That holds from the very first layout, so orbs that start below the fold never run. They also park while the app is in the background.

Measured on an iPhone 17 Pro Max, the heaviest design (`.composing`, 566 dots) takes 65 µs to compute a frame and 0.27 ms to rasterize it, against 8.3 ms per frame at 120 Hz. Most designs cost a fraction of that.

## Draw it yourself

The geometry is public, for SpriteKit, Metal, a watch complication or a pen plotter. A frame is a finished draw list: every value is final and the array order is the draw order.

```swift
let frame = OrbDesign.connecting.frame(size: .regular, at: seconds)

for line in frame.lines {       // draw edges first
    // line.x1, line.y1, line.x2, line.y2, line.w in points
    // line.white and line.a are ink and opacity, as for dots
}
for dot in frame.dots {         // then dots, far to near
    // dot.x, dot.y, dot.r in points, in a 64 × 64 box
    // dot.z is depth (larger is nearer); its scale depends on the design and is
    //   always 0 for .shaping, so use it for ordering or relative shading only —
    //   the dots are already sorted far to near
    // dot.white is ink (0 is darkest, mirror it on dark), dot.a is opacity
}
```

`seconds` is any running time in seconds at normal speed, such as a `TimelineView` date's `timeIntervalSinceReferenceDate`. The design's tuned speed is applied for you.

`dot.z` is depth: larger is nearer. Its scale depends on the design — a unit sphere for some, points for others — and is always 0 for `.shaping`, so use it for ordering or relative shading only. The dots already arrive sorted far to near by `z`.

## Faithful to the original

These are Jakub Antalik's designs, and the port keeps them exact:

- **Transcribed, not reinterpreted.** The engine is a formula-by-formula port of the original TypeScript, down to evaluation order and JavaScript's rounding and loop semantics.
- **Golden vectors.** The test suite checks every dot and line of all nine designs at both sizes, at four instants each, against the web library's published geometry, to 1e-4. It runs on iPhone.
- **A dense differential sweep.** `Scripts/differential-sweep.sh` runs the original engine under Node and streams 725,149 frames (213 million dots) into the Swift engine on an iPhone simulator. Every frame matches, with a worst difference of 2e-9.
- **Pixels.** Rendered side by side with Chrome's canvas, tiles differ by less than one shade in 255 on average, with the differences in the antialiased edges of the dots. The iPhone draws the very smallest dots at their true size, where Chrome draws them faintly.

## Requirements

- iOS 17+, macOS 14+, tvOS 17+, watchOS 10+, visionOS 1+
- Swift 6, Xcode 16+

## Development

```bash
xcodebuild test -scheme ThinkingOrbs -destination "platform=iOS Simulator,name=iPhone 17 Pro"
Scripts/differential-sweep.sh      # prove parity with the original web engine
Scripts/render-media.sh            # re-render every GIF in this README
```

## Credits

The designs, their tuning and the original engine are [thinking-orbs](https://github.com/Jakubantalik/thinking-orbs) by [Jakub Antalik](https://github.com/Jakubantalik), MIT licensed. See them on the web at [orbs.jakubantalik.com](https://orbs.jakubantalik.com). This package is a native Swift port.

## License

ThinkingOrbs is available under the [MIT license](LICENSE), which carries both the original copyright and ours.

Made by [Haplo LLC](https://haploapp.com).
---

## More from Haplo

More open source from [Haplo](https://github.com/haplollc), built by the same solo developer:

- [Minted](https://github.com/haplollc/Minted): turn any SVG into a physically-lit 3D gold medallion for SwiftUI.
- [Vesalius](https://github.com/haplollc/Vesalius): a map of your codebase for Claude Code, an on-device code graph with an MCP server, a CLI, a Mac app and a VS Code extension.
- [MuscleMapKit](https://github.com/haplollc/MuscleMapKit): interactive 3D muscle map for iOS. Shade muscles by how hard they were worked, spin the body, tap a group.
- [ProcessingField](https://github.com/haplollc/ProcessingField): a SwiftUI progress field, a grid of marks whose sizes describe one soft shape that drifts, folds and breathes while your app is busy.
- [Gepetto](https://github.com/haplollc/Gepetto): a browser agent for iOS and macOS that a person can take over at any time. Real WKWebView, small on-device models, a native SwiftUI panel.
- [ClayGlobe](https://github.com/haplollc/ClayGlobe): a claymorphic 3D globe for SwiftUI that plants a waving flag on every country you visit.
- [Mirage](https://github.com/haplollc/Mirage): one-stop on-device diffusion image-generation engine for iOS / macOS / visionOS.
- [SiriGlass](https://github.com/haplollc/SiriGlass): the Siri drop from iOS 27, for SwiftUI. Liquid Glass that pours out of the Dynamic Island and lights up with your voice.
- [Scrubbers](https://github.com/haplollc/Scrubbers): twelve sliders you will want to touch, for SwiftUI. One view, one enum.
- [KoiPond](https://github.com/haplollc/KoiPond): a living koi pond for SwiftUI. Koi glide over any view, lily pads drift on top, and a Metal shader ripples and refracts it all.
