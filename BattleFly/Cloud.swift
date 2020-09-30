//
//  Cloud.swift
//  BattleFly
//
//  Created by Boris Goncharov on 9/30/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit
import GameplayKit

protocol GameBackgroundSpritable {
    static func populateSprite(at point: CGPoint) -> Self
}

final class Cloud: SKSpriteNode, GameBackgroundSpritable {
    
    static func populateSprite(at point: CGPoint) -> Cloud {
        let cloudImageName = configureName()
        let cloud = Cloud(imageNamed: cloudImageName)
        cloud.setScale(randomScaleFactor)
        cloud.position = point
        cloud.zPosition = 10
        
        return cloud
    }
    
    fileprivate static func configureName() -> String {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 3)
        let randomNumber = distribution.nextInt()
        let imageName = "cl" + "\(randomNumber)"
        
        return imageName
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 10, highestValue: 30)
        let randomNumber = CGFloat(distribution.nextInt()) / 10
        
        return randomNumber
    }
}
