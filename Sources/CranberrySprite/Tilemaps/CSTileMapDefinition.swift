//
//  CSTileMapDefinition.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import SpriteKit

public struct CSTileMapDefinition {
    public let skDefinition: SKTileDefinition
    public let position: CGPoint
    public let unitSize: CGSize
    public let sprite: SKSpriteNode
    public let texture: SKTexture
}

extension CSTileMapDefinition: Equatable {}
