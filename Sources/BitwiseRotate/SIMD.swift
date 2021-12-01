infix operator >>>
infix operator <<<

public extension SIMD where Scalar: FixedWidthInteger {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    @inlinable
    func rotateLeft(_ n: Scalar) -> Self {
        assert(n < Scalar.bitWidth)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (Scalar(truncatingIfNeeded: Scalar.bitWidth) &- Scalar(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    @inlinable
    func rotateRight(_ n: Scalar) -> Self {
        assert(n < Scalar.bitWidth)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (Scalar(truncatingIfNeeded: Scalar.bitWidth) &- Scalar(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    @inlinable
    mutating func rotatedLeft(_ n: Scalar) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    @inlinable
    mutating func rotatedRight(_ n: Scalar) {
        self = rotateRight(n)
    }

    @inlinable
    static func <<<(lhs: Self, n: Scalar) -> Self {
        return lhs.rotateLeft(n)
    }

    @inlinable
    static func >>>(lhs: Self, n: Scalar) -> Self {
        return lhs.rotateRight(n)
    }
}




  public extension SIMD2 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD2 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD3 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD4 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD8 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD16 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD32 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == UInt8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == UInt16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == UInt32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == UInt64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == UInt {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == Int8 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 8)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (8 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == Int16 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 16)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (16 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == Int32 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 32)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (32 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == Int64 {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
  public extension SIMD64 where Scalar == Int {
  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the left.
  @inlinable
  func rotateLeft(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &<< n) | (self &>> (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  /// - Returns: Bits rotated n places to the right.
  @inlinable
  func rotateRight(_ n: Scalar) -> Self {
      assert(n < 64)
      if n == 0 { return self }
      return (self &>> n) | (self &<< (64 &- Scalar(truncatingIfNeeded: n)))
  }

  /// Shift the bits to the left. Shifted bits are rotated to the right.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedLeft(_ n: Scalar) {
      self = rotateLeft(n)
  }

  /// Shift the bits to the right. Shifted bits are rotated to the left.
  /// - Parameter n: Number of places to shift.
  @inlinable
  mutating func rotatedRight(_ n: Scalar) {
      self = rotateRight(n)
  }

  @inlinable
  static func <<<(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateLeft(n)
  }

  @inlinable
  static func >>>(lhs: Self, n: Scalar) -> Self {
      return lhs.rotateRight(n)
  }
}
