import Foundation

extension UColor {
	public func contrast() -> Double {
		let red = self.red / 255
		let green = self.green / 255
		let blue = self.blue / 255
		
		let luminance = 0.2126 * red + 0.7152 * green + 0.0722 * blue
		return luminance
	}
	
	public mutating func modify(contrast: Double) {
		let red = max(0, min(255, (self.red - 128) * contrast + 128))
		let green = max(0, min(255, (self.green - 128) * contrast + 128))
		let blue = max(0, min(255, (self.blue - 128) * contrast + 128))
	
		self.red = red
		self.green = green
		self.blue = blue
	}
}
