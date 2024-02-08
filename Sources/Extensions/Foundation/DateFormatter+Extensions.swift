import Foundation

extension DateFormatter {
    public convenience init(with format: String) {
        self.init()
        self.dateFormat = format
    }
}
