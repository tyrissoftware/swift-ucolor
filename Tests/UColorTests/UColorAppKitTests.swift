#if canImport(AppKit)
import XCTest
import AppKit
@testable import UColor

final class UColorAppKitTests: XCTestCase {
	
	func testUColorSpaceAppKit(){
			let sampleColor = UColor(hex3: 13, space: .displayP3)
			
			let appKitColor = NSColor(red: CGFloat(sampleColor.red), green: CGFloat(sampleColor.green), blue: CGFloat(sampleColor.blue), alpha: CGFloat(sampleColor.opacity))
			
			XCTAssertEqual(sampleColor.red, appKitColor.redComponent)
			XCTAssertEqual(sampleColor.green, appKitColor.greenComponent)
			XCTAssertEqual(sampleColor.blue, appKitColor.blueComponent)
			XCTAssertEqual(sampleColor.opacity, appKitColor.alphaComponent)
		}
}
#endif
