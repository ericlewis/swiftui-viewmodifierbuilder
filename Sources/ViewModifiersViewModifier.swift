import SwiftUI

/// Applies set of modifiers to a view and returns a new view.
public struct ApplyViewModifiers<Modifiers>: ViewModifier where Modifiers: ViewModifier {
  private let modifiers: Modifiers

  /// Structure to apply a set of modifiers to a view.
  ///
  /// - Parameters
  ///   - modifiers: closure returning a modifier
  public init(@ViewModifierBuilder _ modifiers: () -> Modifiers) {
    self.modifiers = modifiers()
  }

  public func body(content: Content) -> some View {
    content.modifier(modifiers)
  }
}
