# Builder

![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)
![Swift](https://img.shields.io/badge/Swift-5.7-orange.svg)
[![License](https://img.shields.io/github/license/pelagornis/Builder)](https://github.com/pelagornis/Builder/blob/main/LICENSE)
![Platform](https://img.shields.io/badge/platforms-iOS%2011.0-red)
![Platform](https://img.shields.io/badge/platforms-macOS%2010.3-red)
![Platform](https://img.shields.io/badge/platforms-tvOS%2011.0-red)
![Platform](https://img.shields.io/badge/platforms-watchOS%204.0-red)

Builder Patterns for Flexible Syntax in Swift

## Installation
Builder was deployed as Swift Package Manager. Package to install in a project. Add as a dependent item within the swift manifest.
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/Pelagornis/Builder.git", from: "1.0.0")
    ],
    ...
)
```

Then import the Builder from thr location you want to use.
```swift
import Builder
```

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


## License
**Builder** is under MIT license. See the [LICENSE](LICENSE) file for more info.
