import XCTest
@testable import BitwiseRotate


final class SIMDTests: XCTestCase {
    func testRotateLeft() {
      let rotated = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000) <<< 1
      let expected = SIMD3<UInt8>(arrayLiteral: 0b10101000, 0b10111001,0b00110000)
      XCTAssertEqual(rotated, expected)
    }
  
  func testRotateRight() {
    let rotated = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000) >>> 1
    let expected = SIMD3<UInt8>(arrayLiteral: 0b00101010, 0b01101110,0b00001100)
    XCTAssertEqual(rotated, expected)
  }
}
