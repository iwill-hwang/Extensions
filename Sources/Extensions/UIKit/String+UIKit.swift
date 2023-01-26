#if canImport(UIKit)
import UIKit

public extension String {
    private var drawingOptions: NSStringDrawingOptions {
        [.usesLineFragmentOrigin, .usesDeviceMetrics, .usesFontLeading]
    }

    func heightWith(width: CGFloat, height: CGFloat = CGFloat.greatestFiniteMagnitude, font: UIFont) -> CGFloat {
        let size = CGSize(width: width, height: height)
        let boundingBox = self.boundingRect(with: size, options: drawingOptions, attributes: [.font: font], context: nil)

        return ceil(boundingBox.height)
    }

    func heightWith(width: CGFloat, height: CGFloat = CGFloat.greatestFiniteMagnitude, attributes: [NSAttributedString.Key: Any]) -> CGFloat {
        let size = CGSize(width: width, height: height)
        let boundingBox = self.boundingRect(with: size, options: drawingOptions, attributes: attributes, context: nil)

        return ceil(boundingBox.height)
    }

    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func widthOfString(attributes: [NSAttributedString.Key: Any]) -> CGFloat {
        let size = self.size(withAttributes: attributes)
        return size.width
    }

    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }

    func sizeOfString(usingFont font: UIFont) -> CGSize {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes)
    }
}
#endif
