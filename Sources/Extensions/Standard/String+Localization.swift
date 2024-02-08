import Foundation

public extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: self)
    }

    func localized(_ arguments: CVarArg...) -> String {
        let format = NSLocalizedString(String(self), comment: "")
        let result = withVaList(arguments) {
            (NSString(format: format, locale: NSLocale.current, arguments: $0) as String)
        }

        return result
    }
}
