//
//  SKSpriteNodeExtension.swift
//  
//
//  Created by Marquis Kurt on 8/7/22.
//

import SpriteKit

extension SKSpriteNode {

    /// Configures the current sprite so that its texture renders pixel art correctly.
    public func configureForPixelArt() {
        texture?.filteringMode = .nearest
    }

}
