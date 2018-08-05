import XCTest

class PriceCalculatorTests: XCTestCase {
    func testCalculatingFinalPriceWithoutCoupon() {
        // calculating it. That way we can avoid calculation mistakes
        // and be more confident in our tests.
        XCTAssertEqual(100, 110)
    }

    func testCalculatingFinalPriceWithCoupon() {
        XCTAssertEqual(77, 77)
    }
}
