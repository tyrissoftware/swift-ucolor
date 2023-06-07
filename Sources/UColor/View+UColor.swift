import SwiftUI

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension View {
	public func foregroundColor(
		_ color: UColor
	) -> some View {
		self.foregroundColor(color.swiftUI)
	}
	
	public func background(
		_ color: UColor
	) -> some View {
		self.background(color.swiftUI)
	}
	
	public func tint(
		_ color: UColor
	) -> some View {
		if #available(macOS 13.0, tvOS 16.0, iOS 16.0, watchOS 9.0, *) {
			return self.tint(color.swiftUI)
		} else {
			return self.accentColor(color.swiftUI)
		}
	}
}
