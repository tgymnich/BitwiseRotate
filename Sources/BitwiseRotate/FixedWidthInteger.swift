infix operator >>>
infix operator <<<

public extension FixedWidthInteger {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    @inlinable
    func rotateLeft<T: FixedWidthInteger>(_ n: T) -> Self {
      assert(n < Self.bitWidth)
      if n == 0 { return self }
      return Self((Self.Magnitude(self) &<< n) | (Self.Magnitude(self) &>> (Self.bitWidth &- Int(truncatingIfNeeded: n))))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    @inlinable
    func rotateRight<T: FixedWidthInteger>(_ n: T) -> Self {
        assert(n < Self.bitWidth)
        if n == 0 { return self }
        return Self((Self.Magnitude(self) &>> n) | (Self.Magnitude(self) &<< (Self.bitWidth &- Int(truncatingIfNeeded: n))))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    @inlinable
    mutating func rotatedLeft<T: FixedWidthInteger>(_ n: T) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    @inlinable
    mutating func rotatedRight<T: FixedWidthInteger>(_ n: T) {
        self = rotateRight(n)
    }

    @inlinable
    static func <<<<T: FixedWidthInteger>(lhs: Self, n: T) -> Self {
        return lhs.rotateLeft(n)
    }

    @inlinable
    static func >>><T: FixedWidthInteger>(lhs: Self, n: T) -> Self {
        return lhs.rotateRight(n)
    }
}
