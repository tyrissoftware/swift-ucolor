#if canImport(UIKit)
import UIKit
import XCTest
@testable import UColor

final class UColorUIKitTests: XCTestCase {
	
	func testUIKitConvertion() {
		let color = UColor(hex3: 13)
		let converted = UColor(uiKit: color.uiKit)
		
		XCTAssertEqual(color,converted)
	}
}
#endif
