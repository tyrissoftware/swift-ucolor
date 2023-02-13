#if canImport(AppKit)
import XCTest
import AppKit
@testable import UColor

final class UColorAppKitTests: XCTestCase {
	
	func testUColorSpaceAppKit(){
		
		let color = UColor()
		let converted = UColor(appKit: color.appKit)
		
		XCTAssertEqual(color,converted)		
	}
}
#endif
