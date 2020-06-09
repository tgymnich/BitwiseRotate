# BitwiseRotate

A swift package providing a bitwise rotation operators for `FixedWidthInteger` written in a sepcific way to [compile](https://www.godbolt.org/z/4Ggohy) to `ror` and `rol` on x86.

# Setup

In your Package.swift add:
```swift
.package(url: "https://github.com/TG908/BitwiseRotate.git", from: "0.0.3")
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
