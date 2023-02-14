#if canImport(UIKit)
import UIKit

extension UColor {
	public var uiKit: UIColor {
		UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(opacity))
	}
}

extension UColor {

	public init(uiKit color: UIColor) {
		
		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		var alpha: CGFloat = 0
		
		color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
		self.init(red: red, green: green, blue: blue, opacity: alpha)
	}
}
#endif
