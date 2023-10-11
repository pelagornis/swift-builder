import Foundation
import Builder

@Builder
struct Pelagornis {
    var name: String?
    var librayName: String?
    mutating func libraryName() {
        librayName = "Builder"
    }
}

let pelagornis = Pelagornis()
    .builder()
    .librayName("")
    .name("Hello")
    .with {
        $0.libraryName()
    }
    .build()
