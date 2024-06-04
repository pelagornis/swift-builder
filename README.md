# Builder

![Official](https://img.shields.io/badge/project-official-green.svg?colorA=303033&colorB=226af6&label=Pelagornis)
![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)
![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)
[![License](https://img.shields.io/github/license/pelagornis/swift-builder)](https://github.com/pelagornis/swift-builder/blob/main/LICENSE)
![Platform](https://img.shields.io/badge/platforms-iOS%2013.0%7C%20tvOS%2013.0%7C%20macOS%2010.15%7C%20watchOS%206.0-red.svg)

Builder Patterns for Flexible Syntax in Swift

## Installation
Builder was deployed as Swift Package Manager. Package to install in a project. Add as a dependent item within the swift manifest.
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/pelagornis/swift-builder.git", from: "1.1.0")
    ],
    ...
)
```

Then import the Builder from thr location you want to use.
```swift
import Builder
```
And then adding the product to any target that needs access to the library:

```swift
.product(name: "Builder", package: "swift-builder"),
```


## Documentation
The documentation for releases and ``main`` are available here:
- [``main``](https://pelagornis.github.io/swift-builder/main/documentation/builder)


## Using
Initializer UIView with ``Builder``

```swift
let view = UIView()
    .builder()
    .translatesAutoresizingMaskIntoConstraints(false)
    .backgroundColor(.systemBlue)
    .build()
```

This is equivalent to

```swift
let view: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor(.systemBlue)
    return view
}()
```

Want to use with your own types? Just make extensions.

```swift
extension MyType: Buildable {}

let instance = MyType()
    .builder()
    .property("some value")
    .build()
```

## Support Macros
Starting with Swift version `5.9`, `@Builder` macro is supported.

```swift
@Builder
struct Pelagornis {
    var libraryName: String?
}
```

## License
**Builder** is under MIT license. See the [LICENSE](LICENSE) file for more info.
