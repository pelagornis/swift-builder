# Builder

![Swift](https://img.shields.io/badge/Swift-5.8-orange.svg)

Builder Patterns for Flexible Syntax in Swift

## Requirements
- iOS 11.0+ / macOS 10.13+ / tvOS 11.0+ / watchOS 4.0+
- Swift 5.0+

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
