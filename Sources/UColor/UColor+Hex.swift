import Foundation

extension UColor {
	/// #RRGGBB
	public init(
		hex3: UInt16,
		opacity: Double = 1,
		space: UColorSpace = .sRGB
	) {
		let divisor = Double(15)
		self.red = Double((hex3 & 0xF00) >> 8) / divisor
		self.green = Double((hex3 & 0x0F0) >> 4) / divisor
		self.blue = Double(hex3 & 0x00F) / divisor
		self.opacity = opacity
		self.space = space
	}
	
	/// #RRGGBBAA
	public init(
		hex4: UInt16,
		space: UColorSpace = .sRGB
	) {
		let divisor = Double(15)
		self.red = Double((hex4 & 0xF000) >> 12) / divisor
		self.green = Double((hex4 & 0x0F00) >>  8) / divisor
		self.blue = Double((hex4 & 0x00F0) >>  4) / divisor
		self.opacity = Double( hex4 & 0x000F) / divisor
		self.space = space
	}
	
	/// #RRGGBB
	public init(
		hex6: UInt32,
		opacity: Double = 1,
		space: UColorSpace = .sRGB
	) {
		let divisor = Double(255)
		self.red = Double((hex6 & 0xFF0000) >> 16) / divisor
		self.green = Double((hex6 & 0x00FF00) >>  8) / divisor
		self.blue = Double( hex6 & 0x0000FF) / divisor
		self.opacity = opacity
		self.space = space
	}
	
	/// #RRGGBBAA
	public init(
		hex8: UInt32,
		space: UColorSpace = .sRGB
	) {
		let divisor = Double(255)
		self.red = Double((hex8 & 0xFF000000) >> 24) / divisor
		self.green = Double((hex8 & 0x00FF0000) >>  16) / divisor
		self.blue = Double((hex8 & 0x0000FF00) >>  8) / divisor
		self.opacity = Double( hex8 & 0x000000FF) / divisor
		self.space = space
	}
	
	public init?(
		rgba: String,
		space: UColorSpace = .sRGB
	) {
		guard rgba.hasPrefix("#") else {
			return nil
		}
		
		let hexString: String = String(rgba[String.Index(utf16Offset: 1, in: rgba)...])
		var hexValue: UInt64 = 0
				
		guard Scanner(string: hexString).scanHexInt64(&hexValue) else {
			return nil
		}
		
		switch (hexString.count) {
		case 3:
			self.init(hex3: UInt16(hexValue))
		case 4:
			self.init(hex4: UInt16(hexValue))
		case 6:
			self.init(hex6: UInt32(hexValue))
		case 8:
			self.init(hex8: UInt32(hexValue))
		default:
			return nil
		}
	}
	
	public func hexString(
		includeOpacity: Bool = false
	) -> String {
		let r = red.clamped(to: 0...1)
		let g = green.clamped(to: 0...1)
		let b = blue.clamped(to: 0...1)
		let o = opacity.clamped(to: 0...1)
		
		if (includeOpacity) {
			return String(
				format: "#%02X%02X%02X%02X",
				Int(round(r * 255)),
				Int(round(g * 255)),
				Int(round(b * 255)),
				Int(round(o * 255))
			)
		} else {
			return String(
				format: "#%02X%02X%02X",
				Int(round(r * 255)),
				Int(round(g * 255)),
				Int(round(b * 255))
			)
		}
	}
}
