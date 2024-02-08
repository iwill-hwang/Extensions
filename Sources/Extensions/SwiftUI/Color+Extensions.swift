#if canImport(SwiftUI)
import SwiftUI

extension Color {
    public init(r: Double, g: Double, b: Double) {
        self.init(red: r / 255, green: g / 255, blue: b / 255)
    }
}
#endif
