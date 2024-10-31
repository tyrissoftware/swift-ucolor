import Foundation

public enum UColorSpace: String, Equatable, Hashable, Codable, Sendable {
	case sRGB
	case sRGBLinear
	case displayP3
}

/// Universal Color model
public struct UColor: Equatable, Hashable, Codable, Sendable {
	public var space: UColorSpace

	public var red: Double
	public var green: Double
	public var blue: Double

	public var opacity: Double
	
	public init(
		red: Double,
		green: Double,
		blue: Double,
		opacity: Double = 1,
		space: UColorSpace = .sRGB
	) {
		self.red = red
		self.green = green
		self.blue = blue
		self.opacity = opacity
		self.space = space
	}
}

extension UColor {
	public init(
		red: Double,
		green: Double,
		blue: Double,
		alpha: Double,
		space: UColorSpace = .sRGB
	) {
		self.init(red: red, green: green, blue: blue, opacity: alpha, space: space)
	}
}

extension UColor {
	public func withOpacity(
		_ opacity: Double
	) -> Self {
		var copy = self
		copy.opacity = opacity
		return copy
	}
}

extension UColor {
	public static var clear: Self {
		UColor(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.0)
	}
	
	public static var white: Self {
		UColor(red: 1.0, green: 1.0, blue: 1.0)
	}
	
	public static var black: Self {
		UColor(red: 0.0, green: 0.0, blue: 0.0)
	}
	
	public static var red: Self {
		UColor(red: 1.0, green: 0.0, blue: 0.0)
	}
	
	public static var green: Self {
		UColor(red: 0.0, green: 1.0, blue: 0.0)
	}
	
	public static var blue: Self {
		UColor(red: 0.0, green: 0.0, blue: 1.0)
	}
}
