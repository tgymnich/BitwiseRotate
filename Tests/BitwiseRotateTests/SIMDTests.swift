import XCTest
@testable import BitwiseRotate


final class SIMDTests: XCTestCase {
    func testRotateLeft() {
      let rotated1 = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000) <<< 1
      var rotated2 = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000)
      rotated2.rotatedLeft(1)
      let expected = SIMD3<UInt8>(arrayLiteral: 0b10101000, 0b10111001,0b00110000)
      XCTAssertEqual(rotated1, expected)
      XCTAssertEqual(rotated2, expected)
    }
  
  func testRotateRight() {
    let rotated1 = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000) >>> 1
    var rotated2 = SIMD3<UInt8>(arrayLiteral: 0b01010100,0b11011100,0b00011000)
    rotated2.rotatedRight(1)
    let expected = SIMD3<UInt8>(arrayLiteral: 0b00101010, 0b01101110,0b00001100)
    XCTAssertEqual(rotated1, expected)
    XCTAssertEqual(rotated2, expected)
  }
}
