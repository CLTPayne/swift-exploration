import XCTest

class FizzBuzzTests: XCTestCase {
    var fizz: Fizz?
    
    override func setUp() {
        super.setUp()
        fizz = Fizz()
    }
    
    func testMultiplesOfThree() {
        XCTAssertEqual(fizz?.buzz(number: 3), "Fizz")
        XCTAssertEqual(fizz?.buzz(number: 12), "Fizz")
    }
    
    func testMultiplesOfFive() {
        XCTAssertEqual(fizz?.buzz(number: 5), "Buzz")
        XCTAssertEqual(fizz?.buzz(number: 20), "Buzz")
    }
}

class Fizz: NSObject {
    func buzz(number: Int) -> String? {
        if number % 5 == 0 {
            return "Buzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else {
            return nil
        }
    }
}

FizzBuzzTests.defaultTestSuite.run()

// Command to run the suite - ⌘ + ⇧ + C
