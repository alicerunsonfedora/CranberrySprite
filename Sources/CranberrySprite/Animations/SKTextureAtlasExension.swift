//
//  SKTextureAtlasExtension.swift
//  
//
//  Created by Marquis Kurt on 8/7/22.
//

import SpriteKit

extension SKTextureAtlas {

    /// Get a list of frames from an atlas.
    /// - Parameter atlas: The atlas to read animation frames from.
    /// - Parameter reversible: Whether the animation should play in reverse afterwards. Defaults to false.
    /// - Returns: A list of textures that make up the animation.
    public static func animated(fromAtlas atlas: SKTextureAtlas, reversible: Bool = false) -> [SKTexture] {
        var frames: [SKTexture] = []
        let useDoubles: Bool = atlas.textureNames.count > 9

        for iter in 0 ..< atlas.textureNames.count {
            let format = useDoubles && iter < 10 ? "0" : ""
            let name = "sprite_\(format)\(iter)"
            frames.append(atlas.textureNamed(name))
        }

        if reversible {
            frames += frames.reversed()
        }

        for frame in frames {
            frame.filteringMode = .nearest
        }

        return frames
    }

    /// Convert this atlas to a list of animated frames.
    /// - Parameter reversible: Whether the animation should play in reverse afterwards. Defaults to false.
    /// - Returns: A list of textures that make up the animation.
    public func animated(reversible: Bool = false) -> [SKTexture] {
        SKTextureAtlas.animated(fromAtlas: self, reversible: reversible)
    }
}
