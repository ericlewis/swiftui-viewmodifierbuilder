import SwiftUI

/// A custom parameter attribute that concats many ViewModifers.
@resultBuilder public enum ViewModifierBuilder {

  /// Builds an empty ViewModifer from a block containing no statements.
  @inlinable public static func buildBlock() -> EmptyModifier {
    EmptyModifier()
  }

  /// Passes a single view written as a child view through unmodified.
  @inlinable public static func buildBlock<Modifier>(_ modifier: Modifier) -> Modifier
  where Modifier: ViewModifier {
    modifier
  }

  @inlinable public static func buildBlock<M0, M1>(_ m0: M0, _ m1: M1) -> some ViewModifier
  where M0: ViewModifier, M1: ViewModifier {
    m0.concat(m1)
  }

  @inlinable public static func buildBlock<M0, M1, M2>(_ m0: M0, _ m1: M1, _ m2: M2)
    -> some ViewModifier where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier
  {
    m0.concat(m1).concat(m2)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3>(_ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3)
    -> some ViewModifier
  where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier {
    m0.concat(m1).concat(m2).concat(m3)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4
  ) -> some ViewModifier
  where M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier {
    m0.concat(m1).concat(m2).concat(m3).concat(m4)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4, M5>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5
  ) -> some ViewModifier
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4, M5, M6>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6
  ) -> some ViewModifier
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7
  ) -> some ViewModifier
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7, M8>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7, _ m8: M8
  ) -> some ViewModifier
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier, M8: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7).concat(m8)
  }

  @inlinable public static func buildBlock<M0, M1, M2, M3, M4, M5, M6, M7, M8, M9>(
    _ m0: M0, _ m1: M1, _ m2: M2, _ m3: M3, _ m4: M4, _ m5: M5, _ m6: M6, _ m7: M7, _ m8: M8,
    _ m9: M9
  ) -> some ViewModifier
  where
    M0: ViewModifier, M1: ViewModifier, M2: ViewModifier, M3: ViewModifier, M4: ViewModifier,
    M5: ViewModifier, M6: ViewModifier, M7: ViewModifier, M8: ViewModifier, M9: ViewModifier
  {
    m0.concat(m1).concat(m2).concat(m3).concat(m4).concat(m5).concat(m6).concat(m7).concat(m8)
      .concat(m9)
  }
}
