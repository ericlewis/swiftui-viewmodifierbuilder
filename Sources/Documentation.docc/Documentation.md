# ``ViewModifierBuilder``

A custom parameter attribute that concatenates many [`ViewModifers`](https://developer.apple.com/documentation/swiftui/viewmodifier).

## Example Usage

```swift
import SwiftUI
import ViewModifierBuilder

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello World.")
    }
    .modifiers {
      CustomModifier1()
      CustomModifier2()
      CustomModifier3()
    }
  }
}

```

## Topics

### Applying Modifications
- ``ViewModifierBuilder/ApplyViewModifiers``

### Building Modifications
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock()``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:_:_:_:_:)``
- ``ViewModifierBuilder/ViewModifierBuilder/buildBlock(_:_:_:_:_:_:_:_:_:_:)``

### Supporting Types
- ``ViewModifierBuilder/ViewModifierBuilder``
