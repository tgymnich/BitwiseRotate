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
        return (self &<< n) | (self &>> (Scalar(truncatingIfNeeded: Scalar.bitWidth) &- n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    @inlinable
    func rotateRight(_ n: Scalar) -> Self {
        assert(n < Scalar.bitWidth)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (Scalar(truncatingIfNeeded: Scalar.bitWidth) &- n))
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
