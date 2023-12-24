// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum S {
  internal enum Fonts {
    /// SF Pro Rounded Bold
    internal static let bold = S.tr("Localizable", "fonts.bold", fallback: "SF Pro Rounded Bold")
    /// SF Pro Rounded Medium
    internal static let medium = S.tr("Localizable", "fonts.medium", fallback: "SF Pro Rounded Medium")
    /// SF Pro Rounded Regular
    internal static let regular = S.tr("Localizable", "fonts.regular", fallback: "SF Pro Rounded Regular")
    /// SF Pro Rounded Semibold
    internal static let semibold = S.tr("Localizable", "fonts.semibold", fallback: "SF Pro Rounded Semibold")
  }
  internal enum Login {
    /// Localizable.strings
    ///   EventifyDev
    /// 
    ///   Created by Захар Литвинчук on 24.12.2023.
    internal static let title = S.tr("Localizable", "login.title", fallback: "Log In")
  }
  internal enum Signup {
    /// Sign Up
    internal static let title = S.tr("Localizable", "signup.title", fallback: "Sign Up")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension S {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
