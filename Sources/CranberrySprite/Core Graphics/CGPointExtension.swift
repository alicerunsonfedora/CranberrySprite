//
//  CGPointExtension.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import Foundation

extension CGPoint {
    /// Find the distance between two points.
    /// - Parameter startPoint: The starting point of the line to get the distance of.
    /// - Parameter endPoint: The ending point of the line to get the distance of.
    /// - Returns: The distance between the two points.
    public static func distance(from startPoint: CGPoint, to endPoint: CGPoint) -> CGFloat {
        let xDistance = pow(endPoint.x - startPoint.x, 2)
        let yDistance = pow(endPoint.y - startPoint.y, 2)
        return sqrt(xDistance + yDistance)
    }

    /// Find the distance between this point and another point.
    /// - Parameter point: The point to compare the distance of.
    /// - Returns: The distance between this point and the specified point.
    public func distance(between point: CGPoint) -> CGFloat {
        return CGPoint.distance(from: point, to: self)
    }

    /// Returns the Manhattan or city-block distance between two points.
    /// - Parameter first: The starting CGPoint
    /// - Parameter second: The destination CGPoint
    /// - Returns: A CGFloat rerpesenting the Manhattan distance between the two points.
    static func manhattanDistance(from first: CGPoint, to second: CGPoint) -> CGFloat {
        return abs(first.x - second.x) + abs(first.y - second.y)
    }

    /// Returns the Manhattan or city-block distance between two points.
    /// - Parameter point: The destination CGPoint from itself.
    /// - Returns: A CGFloat rerpesenting the Manhattan distance between the two points.
    func manhattanDistance(to point: CGPoint) -> CGFloat {
        return CGPoint.manhattanDistance(from: self, to: point)
    }
}
