# BitwiseRotate
![Swift](https://github.com/tgymnich/BitwiseRotate/workflows/Swift/badge.svg)
[![codecov](https://codecov.io/gh/tgymnich/BitwiseRotate/branch/main/graph/badge.svg?token=K3HRG7M134)](https://codecov.io/gh/tgymnich/BitwiseRotate)

A swift package providing bitwise rotation operators for `FixedWidthInteger` and `SIMD` vectors with a `FixedWidthInteger` scalar.
This package is written in a sepcific way to [compile](https://www.godbolt.org/z/4Ggohy) to `ror` and `rol` on x86. On ARM only `UInt32`, `UInt64`, `Int32` and `Int64` [compile](https://gist.github.com/tgymnich/84f1cfed5038dff435c9cdb28ceb8f10) to `ror`. Rotations on `SIMD` vectors don't yet compile to the most efficient instructions possible.

# Setup

In your Package.swift add:
```swift
.package(url: "https://github.com/tgymnich/BitwiseRotate.git", from: "1.1.0")
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

## SIMD
```swift
let someBitVector = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000) <<< 1 // (0b10101000, 0b10111001, 0b00110000) 
```
