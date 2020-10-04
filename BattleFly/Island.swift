//
//  Island.swift
//  BattleFly
//
//  Created by Boris Goncharov on 9/30/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit
import GameplayKit

final class Island: SKSpriteNode, GameBackgroundSpritable {
    
    static func populate() -> Island {
        let islanImageName = configureIslandName()
        let island = Island(imageNamed: islanImageName)
        island.setScale(randomScaleFactor)
        island.position = randomPoint()
        island.zPosition = 1
        island.run(rotateForRandomAngl())
        island.run(move(from: island.position))
        
        return island
    }
    
    static func populate(at point: CGPoint) -> Island {
        let islanImageName = configureIslandName()
        let island = Island(imageNamed: islanImageName)
        island.setScale(randomScaleFactor)
        island.position = point
        island.zPosition = 1
        island.run(rotateForRandomAngl())
        island.run(move(from: island.position))
        
        return island
    }

    fileprivate static func configureIslandName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNumber = distribution.nextInt()
        let imageName = "is" + "\(randomNumber)"
        
        return imageName
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
    
    fileprivate static func rotateForRandomAngl() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 100), duration: 0)
    }
    
    fileprivate static func move(from point: CGPoint) -> SKAction {
        
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 100.0
        let duration = moveDistance / movementSpeed
        return SKAction.move(to: movePoint, duration: TimeInterval(duration))
    }
}
