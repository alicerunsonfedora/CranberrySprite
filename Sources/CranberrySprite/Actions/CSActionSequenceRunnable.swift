//
//  CSActionSequenceRunnable.swift
//
//
//  Created by Marquis Kurt on 8/8/22.
//

import SpriteKit

/// A protocol that indicates an object is capable of running a sequence of actions.
public protocol CSActionSequenceRunnable {
    /// Run a sequence of SKActions.
    /// - Parameter sequence: The array of actions that will be run in sequence.
    func runSequence(_ sequence: [SKAction])

    /// Run a sequence of SKActions.
    /// - Parameter builder: A closure that returns an array of actions that will be run in sequence.
    func runSequence(@CSActionBuilder _ builder: () -> [SKAction])
}

extension SKNode: CSActionSequenceRunnable {
    public func runSequence(_ sequence: [SKAction]) {
        run(.sequence(sequence))
    }

    public func runSequence(@CSActionBuilder _ builder: () -> [SKAction]) {
        run(.sequence(builder()))
    }
}
