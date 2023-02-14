import Foundation
import SwiftUI

extension UColorSpace {
	@available(iOS 13.0, *)
	@available(macOS 10.15, *)
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
	@available(iOS 13.0, *)
	@available(macOS 10.15, *)
	public var swiftUI: SwiftUI.Color {
		Color(space.swiftUI, red: red, green: green, blue: blue, opacity: opacity)
	}
}
