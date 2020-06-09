# BitwiseRotate

A swift package providing a bitwise rotation operator written in a way to [compile](https://www.godbolt.org/z/5FxveA) to `ror` and `rol` on x86.

# Setup

In your Package.swift add:
```swift
.package(url: "https://github.com/TG908/BitwiseRotate.git", from: "0.0.1")
```

# Usage


## rol
```swift
let someBits: UInt8 = 0b01010100 <<< 3 // returns 0b10100010
```

## ror
```swift
let someBits: UInt8 = 0b01010100 >>> 3 // returns 0b10001010
```
