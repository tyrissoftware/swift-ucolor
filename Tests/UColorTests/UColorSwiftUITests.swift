@testable import UColor
import XCTest

@available(iOS 13.0, *)
final class UColorSwiftUITests: XCTestCase {

	func testUColorSpaceSrgb(){
		
		let contrastColor = UColor(hex3: 13, space: .sRGB)
		
		XCTAssertEqual(contrastColor.swiftUI, UColor(hex3: 13, space: .sRGB).swiftUI)
	}
	
	func testUColorSpaceSrgbLinear(){
		
		let contrastColor = UColor(hex3: 13, space: .sRGBLinear)
		
		XCTAssertEqual(contrastColor.swiftUI, UColor(hex3: 13, space: .sRGBLinear).swiftUI)
	}
	
	func testUColorSpaceDisplayP3(){
		
		let contrastColor = UColor(hex3: 13, space: .displayP3)
		
		XCTAssertEqual(contrastColor.swiftUI, UColor(hex3: 13, space: .displayP3).swiftUI)
	}
   }
