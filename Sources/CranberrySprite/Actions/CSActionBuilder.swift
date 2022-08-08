//
//  CSActionBuilder.swift
//
//
//  Created by Marquis Kurt on 8/8/22.
//

import SpriteKit

/// A struct that can build a series of SKActions.
@resultBuilder
public enum CSActionBuilder {
    /// Builds the respective list of SKActions to run in sequence.
    public static func buildBlock(_ components: SKAction...) -> [SKAction] {
        components
    }
}
