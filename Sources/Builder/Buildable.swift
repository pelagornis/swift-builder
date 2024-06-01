import Foundation
#if !os(Linux)
  import CoreGraphics
#endif
#if os(iOS) || os(tvOS)
  import UIKit.UIGeometry
#endif

/// Protocol required to support builder patterns.
public protocol Buildable {
    associatedtype Base
    func builder() -> Builder<Base>
}

extension Buildable {
    public func builder() -> Builder<Self> {
        Builder(self)
    }
}

#if !os(Linux)
  extension CGPoint: Buildable {}
  extension CGRect: Buildable {}
  extension CGSize: Buildable {}
  extension CGVector: Buildable {}
#endif

extension Array: Buildable {}
extension Dictionary: Buildable {}
extension Set: Buildable {}
extension JSONDecoder: Buildable {}
extension JSONEncoder: Buildable {}

#if os(iOS) || os(tvOS)
  extension UIEdgeInsets: Buildable {}
  extension UIOffset: Buildable {}
  extension UIRectEdge: Buildable {}
#endif

extension NSObject: Buildable {}
