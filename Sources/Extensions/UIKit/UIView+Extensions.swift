#if canImport(UIKit)
import UIKit

extension UIView {
    public func makeRound(cornerRadius: CGFloat, masksToBounds: Bool = false) {
        self.layer.cornerCurve = .continuous
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = masksToBounds
    }
    
    public func makeRound(masksToBounds: Bool = false) {
        if self.frame.width != self.frame.height {
            self.layer.cornerCurve = .continuous
        }
        
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = masksToBounds
    }
}

extension UIView {
    public func addShadow(radius: CGFloat = 3, opacity: Float = 0.15, offset: CGSize = .zero) {
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
    }
}
#endif
