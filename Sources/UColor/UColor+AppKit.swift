#if canImport(AppKit)
import AppKit
import UIKit

extension UColor {
	public var appKit: NSColor {
		NSColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(opacity))
	}
}

extension UColor {

	public init(appKit color: NSColor) {
		
		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		var alpha: CGFloat = 0
		
		color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
		self.init(red: red, green: green, blue: blue, opacity: alpha)
	}
}
#endif
