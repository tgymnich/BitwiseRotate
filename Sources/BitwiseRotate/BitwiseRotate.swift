infix operator >>>
infix operator <<<

public extension UInt {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> UInt {
        assert(n < 64)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (64 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> UInt {
        assert(n < 64)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (64 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: UInt, n: Int) -> UInt {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: UInt, n: Int) -> UInt {
        return lhs.rotateRight(n)
    }
}

public extension UInt32 {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> UInt32 {
        assert(n < 32)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (32 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> UInt32 {
        assert(n < 32)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (32 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: UInt32, n: Int) -> UInt32 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: UInt32, n: Int) -> UInt32 {
        return lhs.rotateRight(n)
    }
}

public extension UInt16 {
    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> UInt16 {
        assert(n < 16)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (16 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> UInt16 {
        assert(n < 16)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (16 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: UInt16, n: Int) -> UInt16 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: UInt16, n: Int) -> UInt16 {
        return lhs.rotateRight(n)
    }
}

public extension UInt8 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> UInt8 {
        assert(n < 8)
        if n == 0 { return self }
        return (self &<< n) | (self &>> (8 &- UInt(truncatingIfNeeded: n)))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> UInt8 {
        assert(n < 8)
        if n == 0 { return self }
        return (self &>> n) | (self &<< (8 &- UInt(truncatingIfNeeded: n)))
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
        self = rotateLeft(n)
    }

    static func <<<(lhs: UInt8, n: Int) -> UInt8 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: UInt8, n: Int) -> UInt8 {
        return lhs.rotateRight(n)
    }
}

public extension Int {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Int {
        return Int(truncatingIfNeeded: UInt(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Int {
        return Int(truncatingIfNeeded: UInt(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: Int, n: Int) -> Int {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Int, n: Int) -> Int {
        return lhs.rotateRight(n)
    }
}

public extension Int32 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Int32 {
        return Int32(truncatingIfNeeded: UInt32(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Int32 {
        return Int32(truncatingIfNeeded: UInt32(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: Int32, n: Int) -> Int32 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Int32, n: Int) -> Int32 {
        return lhs.rotateRight(n)
    }
}

public extension Int16 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Int16 {
        return Int16(truncatingIfNeeded: UInt16(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Int16 {
        return Int16(truncatingIfNeeded: UInt16(truncatingIfNeeded: self).rotateRight(n))
    }

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedLeft(_ n: Int) {
        self = rotateLeft(n)
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    mutating func rotatedRight(_ n: Int) {
        self = rotateLeft(n)
    }

    static func <<<(lhs: Int16, n: Int) -> Int16 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Int16, n: Int) -> Int16 {
        return lhs.rotateRight(n)
    }
}

public extension Int8 {

    /// Shift the bits to the left. Shifted bits are rotated to the right.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the left.
    func rotateLeft(_ n: Int) -> Int8 {
        return Int8(truncatingIfNeeded: UInt8(truncatingIfNeeded: self).rotateLeft(n))
    }

    /// Shift the bits to the right. Shifted bits are rotated to the left.
    /// - Parameter n: Number of places to shift.
    /// - Returns: Bits rotated n places to the right.
    func rotateRight(_ n: Int) -> Int8 {
        return Int8(truncatingIfNeeded: UInt8(truncatingIfNeeded: self).rotateRight(n))
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
        self = rotateLeft(n)
    }

    static func <<<(lhs: Int8, n: Int) -> Int8 {
        return lhs.rotateLeft(n)
    }

    static func >>>(lhs: Int8, n: Int) -> Int8 {
        return lhs.rotateRight(n)
    }
}
