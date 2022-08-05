//
//  CGVectorExtension.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import CoreGraphics

extension CGVector {
    /// Returns the magnituide of the vector.
    /// - Returns: The magnituide of the vector.
    public func magnitude() -> CGFloat {
        return sqrt(pow(self.dx, 2) + pow(self.dy, 2))
    }
}

extension CGVector: Comparable {
    /// Determine if a vector is less than another.
    public static func < (left: CGVector, right: CGVector) -> Bool {
        return left.magnitude() < right.magnitude()
    }
}
