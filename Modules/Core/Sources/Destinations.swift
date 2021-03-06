import SwiftUI

public enum Destination {
    case listing
    case detail(id: String)
}

extension Destination: Identifiable {
    public var id: Int {
        switch self {
            case .listing: return 1
            case .detail: return 2
        }
    }
}
