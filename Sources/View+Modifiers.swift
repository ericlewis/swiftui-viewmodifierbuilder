import SwiftUI

extension View {
  /// Applies a set of modifiers to a view and returns a new view.
  ///
  /// - Parameters
  ///   - modifiers: closure returning a modifier
  public func modifiers<Modifiers>(@ViewModifierBuilder _ modifiers: () -> Modifiers) -> some View
  where Modifiers: ViewModifier {
    modifier(ApplyViewModifiers(modifiers))
  }
}

