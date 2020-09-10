infix operator >>>
infix operator <<<

public extension FixedWidthInteger {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        assert(n < self.bitWidth)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (Self(truncatingIfNeeded: self.bitWidth) &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        assert(n < self.bitWidth)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (Self(truncatingIfNeeded: self.bitWidth) &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == UInt {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft<Other>(_ n: Other) -> Self where Other : BinaryInteger {
        assert(n < 64)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (64 &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        assert(n < 64)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (64 &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == UInt32 {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        assert(n < 32)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (32 &- Self(truncatingIfNeeded: n)));
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        assert(n < 32)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (32 &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == UInt16 {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        assert(n < 16)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (16 &- Self(truncatingIfNeeded: n)));
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        assert(n < 16)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (16 &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == UInt8 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        assert(n < 8)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (8 &- Self(truncatingIfNeeded: n)));
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        assert(n < 8)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (8 &- Self(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == Int {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == Int32 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt32(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt32(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == Int16 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt16(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt16(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

public extension FixedWidthInteger where Self == Int8 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt8(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Self {
        return Self(truncatingIfNeeded: UInt8(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateRight(n)
    }

    static func <<<(lhs: Self, n: Int) -> Self {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Self, n: Int) -> Self {
        return lhs.rotateRight(n)
    }
}

