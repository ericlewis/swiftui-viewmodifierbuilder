# ViewModifierBuilder

[![](https://img.shields.io/badge/Swift_Package_Manager-compatible-ed702d.svg?style=flat)](https://github.com/apple/swift-package-manager)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fericlewis%2FViewModifierBuilder%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/ericlewis/ViewModifierBuilder)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fericlewis%2FViewModifierBuilder%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/ericlewis/ViewModifierBuilder)

A [result builder](https://github.com/apple/swift-evolution/blob/main/proposals/0289-result-builders.md) for [ViewModifiers](https://developer.apple.com/documentation/swiftui/viewmodifier/).

## Example
```swift
import SwiftUI
import ViewModifierBuilder

struct ContentView: View {

  @State
  private var toggler = false
  
  var body: some View {
    VStack {
      Button("Toggle Modifier") {
        toggler.toggle()
      }
    }
    .modifiers {
      CustomModifier1()
      CustomModifier2()
      if toggler {
        CustomModifier3()
      }
    }
  }
}

```
