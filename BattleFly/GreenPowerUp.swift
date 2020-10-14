//
//  GreenPowerUp.swift
//  BattleFly
//
//  Created by Boris Goncharov on 10/14/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit
import SpriteKit

class GreenPowerUp: PowerUp {
    init() {
           let textureAtlas = SKTextureAtlas(named: "GreenPowerUp")
           super.init(textureAtlas: textureAtlas)
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
