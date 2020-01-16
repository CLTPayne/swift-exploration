import XCTest

class FizzBuzzTests: XCTestCase {
    var fizz: Fizz?
    
    override func setUp() {
        super.setUp()
        fizz = Fizz()
    }
    
    func testMultiplesOfThree() {
        XCTAssertEqual(fizz?.buzz(number: 3), "Fizz")
    }
}

class Fizz: NSObject {
    func buzz(number: Int) -> String? {
        if number % 3 == 0 {
            return "Fizz"
        } else {
            return nil
        }
    }
}

FizzBuzzTests.defaultTestSuite.run()

