import Foundation
import SwiftUI

extension UColorSpace {
	@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
	public var swiftUI: SwiftUI.Color.RGBColorSpace {
		switch self {
		case .sRGB:
			return .sRGB
		case .sRGBLinear:
			return .sRGBLinear
		case .displayP3:
			return .displayP3
		}
	}
}

extension UColor {
	@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
	public var swiftUI: SwiftUI.Color {
		Color(space.swiftUI, red: red, green: green, blue: blue, opacity: opacity)
	}
}
