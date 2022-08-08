//
//  SKSpriteNodeExtension.swift
//
//
//  Created by Marquis Kurt on 8/7/22.
//

import SpriteKit

public extension SKSpriteNode {
    /// Configures the current sprite so that its texture renders pixel art correctly.
    func configureForPixelArt() {
        texture?.filteringMode = .nearest
    }
}
