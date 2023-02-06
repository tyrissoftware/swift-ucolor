#if canImport(AppKit)
import AppKit

extension UColor {
	public var appKit: NSColor {
		NSColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(opacity))
	}
}
#endif
