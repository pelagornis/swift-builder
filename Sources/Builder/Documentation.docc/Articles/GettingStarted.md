#  Getting started

Learn how to use Builder Library.

## Installation
Builder was deployed as Swift Package Manager. Package to install in a project. Add as a dependent item within the swift manifest.
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/pelagornis/builder.git", from: "1.0.1")
    ],
    ...
)
```
Then import the Builder from thr location you want to use.

```swift
import Builder
```

## Using Builder
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
