//
//  CGSizeExtension.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import Foundation

extension CGSize {

    /// Initialize a CGSize with an equal height and width.
    /// - Parameter square: The square's width/height.
    public init(squareOf size: CGFloat) {
        self.init(width: size, height: size)
    }
}
