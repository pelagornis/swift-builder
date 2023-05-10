import XCTest
@testable import Builder

struct Team {
    var name: String?
    var librayName: String?
    mutating func libraryName() {
        librayName = "Builder"
    }
}

extension Team: BuilderCompatible {}

final class BuilderTests: XCTestCase {
    func testBuilder_NSObject() {
        let queue = OperationQueue()
            .builder()
            .name("Builder")
            .build()
        XCTAssertEqual(queue.name, "Builder")
    }
    func testBuilder() {
        let pelagornis = Team()
            .builder()
            .name("Pelagornis")
            .build()
        
        XCTAssertEqual(pelagornis.name, "Pelagornis")
    }
    func testWith() {
        let pelagornis = Team()
            .builder()
            .name("Pelagornis")
            .with {
                $0.libraryName()
            }
            .build()
        
        XCTAssertEqual(pelagornis.name, "Pelagornis")
        XCTAssertEqual(pelagornis.librayName, "Builder")
    }
}
