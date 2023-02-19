#if canImport(Cocoa)
import Cocoa

public protocol IdentifiableView {
    static var identifier: NSUserInterfaceItemIdentifier { get }
}

public extension IdentifiableView {
    static var identifier: NSUserInterfaceItemIdentifier {
        NSUserInterfaceItemIdentifier(rawValue: String(describing: self))
    }
}

public extension NSCollectionView {
    func makeItem<T: IdentifiableView & NSCollectionViewItem>(type: T.Type, for indexPath: IndexPath) -> T {
        let item = makeItem(withIdentifier: type.identifier, for: indexPath) as! T
        return item
    }
    
    func register<T: IdentifiableView & NSCollectionViewItem>(type: T.Type) {
        register(NSNib(nibNamed: type.identifier.rawValue, bundle: nil), forItemWithIdentifier: type.identifier)
    }
    
}
#endif
