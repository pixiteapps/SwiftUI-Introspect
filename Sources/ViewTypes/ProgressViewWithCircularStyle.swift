import SwiftUI

// MARK: SwiftUI.ProgressView().progressViewStyle(.circular)

public struct ProgressViewWithCircularStyleType: IntrospectableViewType {
    public enum Style {
        case circular
    }
}

extension IntrospectableViewType where Self == ProgressViewWithCircularStyleType {
    public static func progressView(style: Self.Style) -> Self { .init() }
}

#if canImport(UIKit)
extension iOSViewVersion<ProgressViewWithCircularStyleType, UIActivityIndicatorView> {
    @available(*, unavailable, message: ".progressViewStyle(.circular) isn't available on iOS 13")
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
}

extension tvOSViewVersion<ProgressViewWithCircularStyleType, UIActivityIndicatorView> {
    @available(*, unavailable, message: ".progressViewStyle(.circular) isn't available on tvOS 13")
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
}
#elseif canImport(AppKit)
extension macOSViewVersion<ProgressViewWithCircularStyleType, NSProgressIndicator> {
    @available(*, unavailable, message: ".progressViewStyle(.circular) isn't available on macOS 10.15")
    public static let v10_15 = Self(for: .v10_15)
    public static let v11 = Self(for: .v11)
    public static let v12 = Self(for: .v12)
    public static let v13 = Self(for: .v13)
}
#endif