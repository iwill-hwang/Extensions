//
//  File.swift
//  
//
//  Created by iwill.h on 2021/05/03.
//

import Foundation
import UIKit

public protocol IdentifiableView: AnyObject {
    static var nib: UINib { get }
    static var identifier: String { get }
}

extension IdentifiableView where Self: UIView {
    public static var nib: UINib { return UINib(nibName: self.identifier, bundle: nil) }
    public static var identifier: String { return  String(describing: self) }
}

// UICollectionViewCell

extension UICollectionView {
    public func registerForCell<T: IdentifiableView>(type: T.Type) {
        self.register(type.nib, forCellWithReuseIdentifier: type.identifier)
    }
    
    public func registerForSupplementaryview<T: IdentifiableView>(type: T.Type, of kind: String) {
        self.register(type.nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.identifier)
    }
    
    public func dequeueReusableCell<T: IdentifiableView>(type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.identifier, for: indexPath) as! T
    }
}

// UITableViewCell

extension UITableView {
    public func registerForCell<T: IdentifiableView>(cell type: T.Type) {
        self.register(type.nib, forCellReuseIdentifier: type.identifier)
    }
    
    public func dequeueReusableCell<T: IdentifiableView>(type: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: type.identifier, for: indexPath) as! T
    }
}

// UITableHeaderFooterView

extension UITableView {
    public func registerForHeaderFooterView<T: IdentifiableView>(type: T.Type)  {
        register(type.nib, forHeaderFooterViewReuseIdentifier: type.identifier)
    }
    
    public func dequeueReusableHeaderFooterView<T: IdentifiableView>(type: T.Type) -> T {
        return dequeueReusableHeaderFooterView(withIdentifier: type.identifier) as! T
    }
}
