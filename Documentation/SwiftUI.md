# SwiftUI Utilities

## UColor extension

A UColor can be used direcly as a View, and it will convert itself to a SwiftUI.Color to render its body.

## foregroundColor

It allows to directly pass a UColor as the foreground color of a SwiftUI View (as opposed to having to use {color.swiftUI}).

## background

It allows to directly pass a UColor as the background of a SwiftUI View.

## tint

Invokes ".tint" or ".accentColor" depending on the current version, and allows a UColor.
