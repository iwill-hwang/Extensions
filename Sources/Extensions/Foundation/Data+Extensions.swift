import Foundation

public extension Data {
    static private var formatter: ByteCountFormatter = {
        let formatter = ByteCountFormatter()
        
        formatter.allowedUnits = [.useAll]
        formatter.countStyle = .binary
        
        return formatter
    }()
    
    func size() -> String {
        Self.formatter.string(fromByteCount: Int64(self.count))
    }
}
