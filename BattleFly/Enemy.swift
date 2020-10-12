//
//  Enemy.swift
//  BattleFly
//
//  Created by Boris Goncharov on 10/10/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit

class Enemy: SKSpriteNode {
    
    static var textureAtlas: SKTextureAtlas?
    var eneemyTexture: SKTexture!
    
    init(eneemyTexture: SKTexture) {
        let texture = eneemyTexture
        super.init(texture: texture, color: .clear, size: CGSize(width: 221, height: 204))
        self.xScale = 0.5
        self.yScale = -0.5
        self.zPosition = 20
        self.name = "sprite"
    }
    
    func flySpiral() {
        let screenSize = UIScreen.main.bounds
        
        let timeVertical: Double = 5
        let timeHorizontal: Double = 3
        
        let moveLeft = SKAction.moveTo(x: 50, duration: timeHorizontal)
        moveLeft.timingMode = .easeInEaseOut
        let moveRight = SKAction.moveTo(x: screenSize.width - 50, duration: timeHorizontal)
        moveRight.timingMode = .easeInEaseOut
        
        let randomNumber = Int(arc4random_uniform(2))
        
        let asideMovementSequence = randomNumber == EnemyDirection.left.rawValue ? SKAction.sequence([moveLeft, moveRight]) : SKAction.sequence([moveRight, moveLeft])

        let foreverAsideMovement = SKAction.repeatForever(asideMovementSequence)
        
        let forwardMovement = SKAction.moveTo(y: -105, duration: timeVertical)
        let groupMovement = SKAction.group([foreverAsideMovement, forwardMovement])
        self.run(groupMovement)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum EnemyDirection: Int {
    case left = 0
    case right
}
