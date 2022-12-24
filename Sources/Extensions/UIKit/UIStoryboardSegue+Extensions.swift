import Foundation
import UIKit

extension UIStoryboardSegue {
    public func controller<T: UIViewController>(type: T.Type) -> T? {
        if let controller = self.destination as? T {
            return controller
        } else if let navigationController = destination as? UINavigationController, let controller = navigationController.topViewController as? T {
            return controller
        } else {
            return nil
        }
    }
}
