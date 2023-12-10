# Builder

![Official](https://img.shields.io/badge/project-official-green.svg?colorA=303033&colorB=226af6&label=Pelagornis)
![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)
![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)
[![License](https://img.shields.io/github/license/pelagornis/Builder)](https://github.com/pelagornis/Builder/blob/main/LICENSE)
![Platform](https://img.shields.io/badge/platforms-iOS%2011.0%7C%20tvOS%2011.0%7C%20macOS%2010.3%7C%20watchOS%204.0-red.svg)

Builder Patterns for Flexible Syntax in Swift

## Installation
Builder was deployed as Swift Package Manager. Package to install in a project. Add as a dependent item within the swift manifest.
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/pelagornis/builder.git", from: "1.0.2")
    ],
    ...
)
```

Then import the Builder from thr location you want to use.
```swift
import Builder
```

## Documentation
The documentation for releases and ``main`` are available here:
- [``main``](https://pelagornis.github.io/builder/main/documentation/builder)


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

## Support Macro
Starting with Swift version `5.9`, `@Builder` macro is supported.

```swift
@Builder
struct Pelagornis {
    var libraryName: String?
}
```

## License
**Builder** is under MIT license. See the [LICENSE](LICENSE) file for more info.
