//
//  CSWorldCreateable.swift
//  
//
//  Created by Marquis Kurt on 8/4/22.
//

import SpriteKit

public protocol CSWorldCreateable {
    var world: CSTileMapParseable? { get set }
    func generateWorld()
    func applyOnTile(from definition: CSTileMapDefinition)
}

extension CSWorldCreateable {
    public func generateWorld() {
        guard let world = world else { return }
        world.parseTilemap(applicator: applyOnTile)
    }
}
