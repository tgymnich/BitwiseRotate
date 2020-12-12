//
//  CustomInt.swift
//  
//
//  Created by Tim Gymnich on 12.12.20.
//

import Foundation

struct CustomInt<Impl: FixedWidthInteger>: FixedWidthInteger, Hashable {
    typealias Words = Impl.Words
    typealias Magnitude = Impl.Magnitude
    typealias IntegerLiteralType = Impl.IntegerLiteralType

    private var _impl: Impl

    static var max: CustomInt<Impl> { CustomInt(Impl.max) }
    static var min: CustomInt<Impl> { CustomInt(Impl.min) }
    static var bitWidth: Int { Impl.bitWidth }
    static var isSigned: Bool { Impl.isSigned }

    var nonzeroBitCount: Int { _impl.nonzeroBitCount }
    var leadingZeroBitCount: Int { _impl.leadingZeroBitCount }
    var byteSwapped: CustomInt<Impl> { CustomInt(_impl.byteSwapped) }
    var words: Impl.Words { _impl.words }
    var trailingZeroBitCount: Int { _impl.trailingZeroBitCount }
    var magnitude: Impl.Magnitude { _impl.magnitude }

    private init(_ impl: Impl) {
        self._impl = impl
    }

    init<T>(_ source: T) where T : BinaryInteger {
        self._impl = Impl(source)
    }

    init<T>(_truncatingBits source: T) where T : BinaryInteger {
        self._impl = Impl(source)
    }

    init?<T>(exactly source: T) where T : BinaryInteger {
        guard let impl = Impl(exactly: source) else { return nil }
        self._impl = impl
    }

    init(integerLiteral value: Impl.IntegerLiteralType) {
        self._impl = Impl(integerLiteral: value)
    }

    func addingReportingOverflow(_ rhs: CustomInt<Impl>) -> (partialValue: CustomInt<Impl>, overflow: Bool) {
        let (partialValue, overflow) = _impl.addingReportingOverflow(rhs._impl)
        return (CustomInt(partialValue), overflow)
    }

    func subtractingReportingOverflow(_ rhs: CustomInt<Impl>) -> (partialValue: CustomInt<Impl>, overflow: Bool) {
        let (partialValue, overflow) = _impl.subtractingReportingOverflow(rhs._impl)
        return (CustomInt(partialValue), overflow)
    }

    func multipliedReportingOverflow(by rhs: CustomInt<Impl>) -> (partialValue: CustomInt<Impl>, overflow: Bool) {
        let (partialValue, overflow) = _impl.multipliedReportingOverflow(by: rhs._impl)
        return (CustomInt(partialValue), overflow)
    }

    func dividedReportingOverflow(by rhs: CustomInt<Impl>) -> (partialValue: CustomInt<Impl>, overflow: Bool) {
        let (partialValue, overflow) = _impl.dividedReportingOverflow(by: rhs._impl)
        return (CustomInt(partialValue), overflow)
    }

    func remainderReportingOverflow(dividingBy rhs: CustomInt<Impl>) -> (partialValue: CustomInt<Impl>, overflow: Bool) {
        let (partialValue, overflow) = _impl.remainderReportingOverflow(dividingBy: rhs._impl)
        return (CustomInt(partialValue), overflow)
    }

    func dividingFullWidth(_ dividend: (high: CustomInt<Impl>, low: Magnitude)) -> (quotient: CustomInt<Impl>, remainder: CustomInt<Impl>) {
        let (quotient, remainder) = _impl.dividingFullWidth((high: dividend.high._impl, low: dividend.low))
        return (CustomInt(quotient), CustomInt(remainder))
    }

    static func + (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl + rhs._impl)
    }

    static func / (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl / rhs._impl)
    }

    static func /= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl /= rhs._impl
    }

    static func % (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl % rhs._impl)
    }

    static func %= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl %= rhs._impl
    }

    static func * (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl * rhs._impl)
    }

    static func *= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl *= rhs._impl
    }

    static func &= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl &= rhs._impl
    }

    static func |= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl |= rhs._impl
    }

    static func ^= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl ^= rhs._impl
    }

    static func - (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl - rhs._impl)
    }

    static func &<<= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl &<<= rhs._impl
    }

    static func &<< (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl &<< rhs._impl)
    }

    static func &>>= (lhs: inout CustomInt<Impl>, rhs: CustomInt<Impl>) {
        lhs._impl &>>= rhs._impl
    }

    static func &>> (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> CustomInt<Impl> {
        return CustomInt(lhs._impl &>> rhs._impl)
    }

    static func < (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> Bool {
        return lhs._impl < rhs._impl
    }

    static func == (lhs: CustomInt<Impl>, rhs: CustomInt<Impl>) -> Bool {
        return lhs._impl == rhs._impl
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(_impl)
    }
}
