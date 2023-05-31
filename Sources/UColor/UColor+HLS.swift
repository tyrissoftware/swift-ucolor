import Foundation

public struct HLS: Equatable {
	public var hue: Double
	public var saturation: Double
	public var lightness: Double
	public var opacity: Double
	
	public init(
		hue: Double,
		saturation: Double,
		lightness: Double,
		opacity: Double
	) {
		self.hue = hue
		self.saturation = saturation
		self.lightness = lightness
		self.opacity = opacity
	}
}

extension HLS {
	public var rgb: UColor {
		let c = (1 - abs(2 * lightness - 1)) * saturation
		let x = c * (1 - abs((hue / 60).truncatingRemainder(dividingBy: 2) - 1))
		let m = lightness - c/2
		
		var r: Double = 0
		var g: Double = 0
		var b: Double = 0
		
		switch hue {
			case 0..<60:
				r = c; g = x
			case 60..<120:
				r = x; g = c
			case 120..<180:
				g = c; b = x
			case 180..<240:
				g = x; b = c
			case 240..<300:
				r = x; b = c
			default:
				r = c; b = x
		}
		
		return UColor(red: r+m, green: g+m, blue: b+m, opacity: opacity)
	}
	
	static func from(
		color: UColor
	) -> Self {
		let r = color.red / 255
		let g = color.green / 255
		let b = color.blue / 255
		
		let cmax = max(r, max(g, b))
		let cmin = min(r, min(g, b))
		let delta = cmax - cmin
		
		var h: Double = 0
		if delta == 0 {
			h = 0
		} else if cmax == r {
			h = 60 * (((g - b) / delta).truncatingRemainder(dividingBy: 6))
		} else if cmax == g {
			h = 60 * (((b - r) / delta) + 2)
		} else {
			h = 60 * (((r - g) / delta) + 4)
		}
		
		let l = (cmax + cmin) / 2
		let s = delta == 0 ? 0 : delta / (1 - abs(2*l - 1))
		
		return .init(hue: h, saturation: s, lightness: l, opacity: color.opacity)
	}
}
