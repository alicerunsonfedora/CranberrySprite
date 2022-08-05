//
//  CSTileMapParseable.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import SpriteKit

public protocol CSTileMapParseable {
    func parseTilemap(applicator: @escaping (CSTileMapDefinition) -> Void)
}

extension SKTileMapNode: CSTileMapParseable {
    public func parseTilemap(applicator: @escaping (CSTileMapDefinition) -> Void) {
        let halfWidth = CGFloat(self.numberOfColumns) / (self.tileSize.width * 2)
        let halfHeight = CGFloat(self.numberOfRows) / (self.tileSize.height * 2)

        iterateTiles { column, row in
            guard let tileMapDefinition = tileDefinition(atColumn: column, row: row) else { return }
            let spritePositionX = CGFloat(column) * self.tileSize.width - halfWidth + (self.tileSize.width / 2)
            let spritePositionY = CGFloat(row) * self.tileSize.height - halfHeight + (self.tileSize.height / 2)

            let spriteNode = SKSpriteNode(texture: tileMapDefinition.textures[0])
            spriteNode.zPosition = 1
            spriteNode.isHidden = false
            
            spriteNode.position = CGPoint(
                x: spritePositionX + self.position.x,
                y: spritePositionY + self.position.y
            )

            let definiton = CSTileMapDefinition(
                skDefinition: tileMapDefinition,
                position: .init(x: column, y: row),
                unitSize: self.tileSize,
                sprite: spriteNode,
                texture: tileMapDefinition.textures[0]
            )
            applicator(definiton)
        }
    }
}
