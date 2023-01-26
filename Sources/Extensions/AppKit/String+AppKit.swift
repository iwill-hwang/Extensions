#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public extension String {
    private var drawingOptions: NSString.DrawingOptions {
        [.usesLineFragmentOrigin, .usesDeviceMetrics, .usesFontLeading]
    }

    func heightWith(width: CGFloat, height: CGFloat = CGFloat.greatestFiniteMagnitude, font: NSFont) -> CGFloat {
        let size = CGSize(width: width, height: height)
        let boundingBox = self.boundingRect(with: size, options: drawingOptions, attributes: [.font: font], context: nil)

        return ceil(boundingBox.height)
    }

    func heightWith(width: CGFloat, height: CGFloat = CGFloat.greatestFiniteMagnitude, attributes: [NSAttributedString.Key: Any]) -> CGFloat {
        let size = CGSize(width: width, height: height)
        let boundingBox = self.boundingRect(with: size, options: drawingOptions, attributes: attributes, context: nil)

        return ceil(boundingBox.height)
    }

    func widthOfString(usingFont font: NSFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func widthOfString(attributes: [NSAttributedString.Key: Any]) -> CGFloat {
        let size = self.size(withAttributes: attributes)
        return size.width
    }

    func heightOfString(usingFont font: NSFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }

    func sizeOfString(usingFont font: NSFont) -> CGSize {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes)
    }
}
#endif
