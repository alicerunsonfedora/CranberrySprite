//
//  Size.swift
//  
//
//  Created by Marquis Kurt on 8/8/22.
//

import Foundation
import XCTest
@testable import CranberrySprite

class CranberrySizeTests: XCTestCase {

    func testSquareSize() throws {
        let square = CGSize(squareOf: 128)
        XCTAssertEqual(square.width, 128)
        XCTAssertEqual(square.height, 128)
    }

}
