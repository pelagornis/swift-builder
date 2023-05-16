import Foundation
#if !os(Linux)
  import CoreGraphics
#endif
#if os(iOS) || os(tvOS)
  import UIKit.UIGeometry
#endif

/// Protocol required to support builder patterns.
public protocol BuilderCompatible {
    associatedtype Base
    func builder() -> Builder<Base>
}

extension BuilderCompatible {
    public func builder() -> Builder<Self> {
        Builder(self)
    }
}

#if !os(Linux)
  extension CGPoint: BuilderCompatible {}
  extension CGRect: BuilderCompatible {}
  extension CGSize: BuilderCompatible {}
  extension CGVector: BuilderCompatible {}
#endif

extension Array: BuilderCompatible {}
extension Dictionary: BuilderCompatible {}
extension Set: BuilderCompatible {}
extension JSONDecoder: BuilderCompatible {}
extension JSONEncoder: BuilderCompatible {}

#if os(iOS) || os(tvOS)
  extension UIEdgeInsets: BuilderCompatible {}
  extension UIOffset: BuilderCompatible {}
  extension UIRectEdge: BuilderCompatible {}
#endif

extension NSObject: BuilderCompatible {}
