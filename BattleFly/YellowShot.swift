//
//  YellowShot.swift
//  BattleFly
//
//  Created by Boris Goncharov on 10/16/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit

class YellowShot: Shot {
    init() {
        let textureAtlas = SKTextureAtlas(named: "YellowAmmo")
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
