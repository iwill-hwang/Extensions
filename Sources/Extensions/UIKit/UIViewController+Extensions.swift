#if canImport(UIKit)
import UIKit

extension UIViewController {
    public func alert(title: String?, message: String?, completion: (() -> (Void))? = nil) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: NSLocalizedString("Ok", comment: "Ok"), style: .default, handler: { _ in
            completion?()
        })
        
        controller.addAction(ok)
        
        self.present(controller, animated: true)
    }
}

#endif
