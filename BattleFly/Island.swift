//
//  Island.swift
//  BattleFly
//
//  Created by Boris Goncharov on 9/30/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit
import GameplayKit

class Island: SKSpriteNode {
    
    static func populateIsland(at point: CGPoint) -> Island {
        let islanImageName = configureIslandName()
        let island = Island(imageNamed: islanImageName)
        island.setScale(randomScaleFactor)
        island.position = point
        island.zPosition = 1
        island.run(rotateForRandomAngl())
        
        return island
    }

    static func configureIslandName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNumber = distribution.nextInt()
        let imageName = "is" + "\(randomNumber)"
        
        return imageName
    }
    
    static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
    
    static func rotateForRandomAngl() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 100), duration: 0)
    }
}
