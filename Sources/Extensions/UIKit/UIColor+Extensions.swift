import UIKit

extension UIColor {
    public convenience init(r: Int, g: Int, b: Int, alpha: CGFloat = 1) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: alpha)
    }
    
    public convenience init(rgb: Int, alpha: CGFloat = 1) {
        self.init(red: CGFloat(rgb) / 255, green: CGFloat(rgb) / 255, blue: CGFloat(rgb) / 255, alpha: alpha)
    }
}
