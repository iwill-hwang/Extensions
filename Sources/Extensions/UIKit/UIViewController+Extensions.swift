#if canImport(UIKit)
import UIKit

public extension UIAlertController {
    enum Action {
        case ok
        case cancel
        case custom(String)

        var message: String {
            switch self {
            case .ok:
                return NSLocalizedString("Ok", comment: "Ok")
            case .cancel:
                return NSLocalizedString("Cancel", comment: "Cancel")
            case .custom(let description):
                return description
            }
        }
    }
}

public extension UIViewController {
    func alert(title: String?, message: String?, ok: UIAlertController.Action = .ok, completion: (() -> (Void))? = nil) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let ok = UIAlertAction(title: ok.message, style: .default, handler: { _ in
            completion?()
        })
        
        controller.addAction(ok)
        
        self.present(controller, animated: true)
    }
    
    func confirmAlert(title: String?, message: String?,
                      ok: UIAlertController.Action = .ok,
                      cancel: UIAlertController.Action = .cancel,
                      completion:((Bool) -> Void)? = nil) {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let ok = UIAlertAction(title: ok.message, style: .default) { _ in
            completion?(true)
        }

        let cancel = UIAlertAction(title: cancel.message, style: .default) { _ in
            completion?(false)
        }

        controller.addAction(cancel)
        controller.addAction(ok)

        self.present(controller, animated: true)
    }
    
    func confirmSheet(message: String?, action: String?, style: UIAlertAction.Style = .default, completion: ((Bool) -> Void)? = nil) {
        let controller = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: action ?? NSLocalizedString("Ok", comment: "Ok"), style: style, handler: { _ in
            completion?(true)
        })
        
        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: "Cancel"), style: .cancel, handler: { _ in
            completion?(false)
        })

        if let popover = controller.popoverPresentationController {
            let view = self.view!
            popover.sourceView = view
            popover.sourceRect = CGRect(x: view.bounds.size.width / 2.0, y: view.bounds.size.height / 2.0, width: 0, height: 0)

            popover.permittedArrowDirections = []
        }
        
        controller.addAction(ok)
        controller.addAction(cancel)
        
        self.present(controller, animated: true)
        
    }
}

#endif
