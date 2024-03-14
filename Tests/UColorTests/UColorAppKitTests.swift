#if canImport(AppKit)
import XCTest
import AppKit
@testable import UColor

final class UColorAppKitTests: XCTestCase {
	func testUColorSpaceAppKit() {
		let color = UColor(red: 1, green: 0, blue: 0.5)
		let converted = UColor(appKit: color.appKit)
		
		XCTAssertEqual(color,converted)		
	}
}
#endif
