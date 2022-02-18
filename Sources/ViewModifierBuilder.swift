import SwiftUI

public struct V: ViewModifier {
  public func body(content: Content) -> some View {
    content
  }
}

public struct V2: ViewModifier {
  public func body(content: Content) -> some View {
    content
  }
}

/// A custom parameter attribute that constructs modifiers from closures.
///
/// You typically use ``ViewModiferBuilder`` as a parameter attribute for child
/// modifier-producing closure parameters, allowing those closures to provide
/// multiple child modifiers.
///
@resultBuilder public enum ViewModifierBuilder {

  /// Builds an empty modifier from a block containing no statements.
  public static func buildBlock() -> EmptyModifier {
    EmptyModifier()
  }

  /// Passes a single modifier written as a child modifier through unmodified.
  /// An example of a single modifier written as a child modifier is
  /// `{ ExampleModifier() }`.
  public static func buildBlock<Modifier>(_ modifier: Modifier) -> Modifier
  where Modifier: ViewModifier {
    modifier
  }

  public static func buildBlock<M0, M1>(_ m0: M0, _ m1: M1) -> some ViewModifier
  where M0: ViewModifier, M1: ViewModifier {
    m0.concat(m1)
  }

  public static func buildBlock<M0, M1, M2>(_ m0: M0, _ m1: M1, _ m2: M2)
    -> ModifiedContent<ModifiedContent<M0, M1>, M2>
  where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier {
    m0.concat(m1).concat(m2)
  }

  public static func buildBlock<M0, M1, M2, M3>(_ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3)
    -> ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>
  where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier {
    m0.concat(m1).concat(m2).concat(m3)
  }

  public static func buildBlock<M0, M1, M2, M3, M4>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4
  ) -> ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>
  where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier {
    m0.concat(m1).concat(m2).concat(m3).concat(m4)
  }

  public static func buildBlock<M0, M1, M2, M3, M4, M5>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5
  ) -> ModifiedContent<
    ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>, M5
  >
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5)
  }

  public static func buildBlock<M0, M1, M2, M3, M4, M5, M6>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6
  ) -> ModifiedContent<
    ModifiedContent<
      ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>, M5
    >, M6
  >
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6)
  }

  public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7
  ) -> ModifiedContent<
    ModifiedContent<
      ModifiedContent<
        ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>, M5
      >, M6
    >, M7
  >
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7)
  }

  public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7, M8>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7, _ m8: M8
  ) -> ModifiedContent<
    ModifiedContent<
      ModifiedContent<
        ModifiedContent<
          ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>, M5
        >, M6
      >, M7
    >, M8
  >
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier, M8: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7).concat(m8)
  }

  public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7, M8, M9>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7, _ m8: M8,
    _ m9: M9
  ) -> ModifiedContent<
    ModifiedContent<
      ModifiedContent<
        ModifiedContent<
          ModifiedContent<
            ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<M0, M1>, M2>, M3>, M4>,
            M5
          >, M6
        >, M7
      >, M8
    >, M9
  >
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier, M8: ViewModifier, M9: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7).concat(m8)
      .concat(m9)
  }

  /// Provides support for “if” statements in multi-statement closures,
  /// producing an optional modifier that is visible only when the condition
  /// evaluates to `true`.
  public static func buildOptional<Modifier: ViewModifier>(_ modifier: Modifier?)
    -> OptionalModifier<Modifier>
  {
    .init(modifier: modifier)
  }

  /// Provides support for "if" statements in multi-statement closures,
  /// producing conditional content for the "then" branch.
  public static func buildEither<TrueModifier, FalseModifier>(first left: TrueModifier)
    -> ConditionalViewModifier<TrueModifier, FalseModifier>
  where TrueModifier: ViewModifier, FalseModifier: ViewModifier {
    .trueModifier(left)
  }

  /// Provides support for "if-else" statements in multi-statement closures,
  /// producing conditional content for the "else" branch.
  public static func buildEither<TrueModifier, FalseModifier>(second right: FalseModifier)
    -> ConditionalViewModifier<TrueModifier, FalseModifier>
  where TrueModifier: ViewModifier, FalseModifier: ViewModifier {
    .falseModifier(right)
  }

  /// Provides support for "if" statements with `#available()` clauses in
  /// multi-statement closures, producing conditional content for the "then"
  /// branch, i.e. the conditionally-available branch.
  public static func buildLimitedAvailability<Modifier>(_ modifier: Modifier)
    -> Modifier where Modifier: ViewModifier
  {
    modifier
  }
}

public enum ConditionalViewModifier<TrueModifier: ViewModifier, FalseModifier: ViewModifier>:
  ViewModifier
{
  case trueModifier(TrueModifier)
  case falseModifier(FalseModifier)

  public func body(content: Content) -> some View {
    switch self {
    case let .trueModifier(modifier):
      content.modifier(modifier)
    case let .falseModifier(modifier):
      content.modifier(modifier)
    }
  }
}

public struct OptionalModifier<Modifier: ViewModifier>: ViewModifier {
  let modifier: Modifier?

  public func body(content: Content) -> some View {
    if let modifier = modifier {
      content.modifier(modifier)
    } else {
      content
    }
  }
}
