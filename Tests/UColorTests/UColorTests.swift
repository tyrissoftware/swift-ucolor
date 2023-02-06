import Foundation
import XCTest
import SwiftUI
@testable import UColor

class UColorTests: XCTestCase {
	func testHex() {
		let color = UColor(rgba: "#9933ccff")
		XCTAssertEqual(color?.red, 0.6)
		XCTAssertEqual(color?.green, 0.2)
		XCTAssertEqual(color?.blue, 0.8)
		XCTAssertEqual(color?.opacity, 1.0)
		
		let invalid = UColor(rgba: "#hello")
		XCTAssertNil(invalid)
	}
}
