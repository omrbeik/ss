#if canImport(UIKit) && !os(watchOS)
import UIKit

public extension UIView {
  /// SwifterSwift: Take screenshot of view (if applicable).
  var screenshot: UIImage? {
    UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, 0)
    defer {
      UIGraphicsEndImageContext()
    }
    guard let context = UIGraphicsGetCurrentContext() else { return nil }
    layer.render(in: context)
    return UIGraphicsGetImageFromCurrentImageContext()
  }
}
#endif
