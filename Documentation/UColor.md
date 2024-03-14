# UColor

UColor is a simple struct that defines the color description.

## Features

### UIKit, SwiftUI and AppKit

A UColor can be converted to any Apple framework we want to use:

```swift
let color = UColor.black
color.swiftUI
color.uiKit
color.appKit
```

In the case of SwiftUI, UColor provides a View extension so you can use it directly:

```swift
ZStack {
	UColor.black
}
```

## Initializers

You can construct a UColor from its red, green, blue and opacity components. An additional initializer exists so that you can use *alpha* as the opacity name to match Apple's naming.

A few basic colors are also defined to easily create some colors for debugging and testing purposes.

```swift
let color = UColor(red: 0.012, green: 0.1, blue: 0.4, opacity: 0.0)
let black = UColor.black
```

UColor includes initializers from platform specific colors, so you can easily convert a NSColor or UIColor to a UColor.

Finally, you can also create a color from a [hexadecimal representation.](Hex.md)
