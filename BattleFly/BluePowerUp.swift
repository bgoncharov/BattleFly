//
//  BluePowerUp.swift
//  BattleFly
//
//  Created by Boris Goncharov on 10/14/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit
import SpriteKit

class BluePowerUp: PowerUp {
    init() {
        let textureAtlas = Assets.shared.bluePowerUpAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
