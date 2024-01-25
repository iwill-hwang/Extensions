#if canImport(UIKit)
import UIKit

extension UIStoryboard {
    public func instantiateViewController<T: UIViewController>(type: T.Type) -> T {
        instantiateViewController(withIdentifier: String(describing: type.self)) as! T
    }
}
#endif
