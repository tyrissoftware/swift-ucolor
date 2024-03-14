@testable import UColor
import XCTest

final class UColorHexTests: XCTestCase {
	func testRRGGBB() {
		let colorHex3 = UColor(hex3: 13)
		let sampleColor = UColor(red: 0.0, green: 0.0, blue: 0.8666666666666667, opacity: 1.0, space: .sRGB)
		XCTAssertEqual(colorHex3, sampleColor)
	}
	
	func testRRGGBBAA() {
		let colorHex4 = UColor(hex4: 13)
		let sampleColor = UColor(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.86666666666666669, space: .sRGB)
		XCTAssertEqual(colorHex4, sampleColor)
	}
	
	func testRRGGBB2() {
		let colorHex6 = UColor(hex6: 13)
		let sampleColor = UColor(red: 0.0, green: 0.0, blue: 0.050980392156862744, opacity: 1.0, space: .sRGB)
		XCTAssertEqual(colorHex6, sampleColor)
	}
	
	func testColorWithPrefixNil() {
		let sampleColor = UColor(rgba: "240")
		XCTAssertNil(sampleColor)
	}
	
	func testColorWithPrefixSwitchCase3() {
		let hexstring = "240"
		let sampleColor = UColor(rgba: "#\(hexstring)")
		let contrastColor = UColor(red: 0.13333333333333333, green: 0.26666666666666666, blue: 0.0, opacity: 1.0, space: .sRGB)
		XCTAssertEqual(sampleColor, contrastColor)
	}
	
	func testColorWithPrefixSwitchCase4() {
		let hexstring = "006B"
		let sampleColor = UColor(rgba: "#\(hexstring)")
		let contrastColor = UColor(red: 0.0, green: 0.0, blue: 0.40000000000000002, opacity: 0.73333333333333328, space: .sRGB)
		XCTAssertEqual(sampleColor, contrastColor)
	}
	
	func testColorWithPrefixSwitchCase6() {
		let hexstring = "006B76"
		let sampleColor = UColor(rgba: "#\(hexstring)")
		let contrastColor = UColor(red: 0.0, green: 0.41960784313725491, blue: 0.46274509803921571, opacity: 1.0, space: .sRGB)
		XCTAssertEqual(sampleColor, contrastColor)
	}
	
	func testColorWithPrefixSwitchCaseDefault() {
		let hexstring = "13"
		let sampleColor = UColor(rgba: "#\(hexstring)")
		XCTAssertNil(sampleColor)
	}
}
