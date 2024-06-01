import Foundation

/// Builder Features.
@dynamicMemberLookup
public struct Builder<Base> {
    /// Base
    private let base: Base

    /// Initalizer
    public init(_ base: Base) {
        self.base = base
    }

    /// Readable and flexible data settings
    ///
    ///```swift
    /// let view = UIView()
    ///           .builder()
    ///           .backgroundColor(.red)
    ///           .build()
    ///```
    ///
    /// - Parameter keyPath: The key path of the property to set.
    /// - Returns: The object being configured.
    public subscript<Value>(
        dynamicMember keyPath: WritableKeyPath<Base, Value>
    ) -> (Value) -> Builder<Base> {
        return { [base] value in
            var object = base
            object[keyPath: keyPath] = value
            return Builder(object)
        }
    }

    /// Execute closure using objects as arguments within a builder pattern
    ///
    /// ```swift
    /// let view = UIView()
    ///            .builder()
    ///            .backgroundColor(.red)
    ///            .with {
    ///                $0.layer.cornerRadius = 15
    ///            }
    ///            .build()
    /// ```
    ///
    /// - Parameter block: The closure to execute.
    /// - Returns: The object being configured.
    public func with(_ block: (inout Base) -> Void) -> Builder<Base> {
        Builder(self.with(block))
    }

    /// Build is responsible for creating objects.
    public func build() -> Base {
        self.base
    }
}

extension Builder {
    public func with(_ block: (inout Base) -> Void) -> Base {
        var object = self.base
        block(&object)
        return object
    }
}
