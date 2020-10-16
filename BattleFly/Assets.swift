//
//  Assets.swift
//  BattleFly
//
//  Created by Boris Goncharov on 10/16/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import SpriteKit

class Assets {
    static let shared = Assets()
    let yellowAmmoAtlas = SKTextureAtlas(named: "YellowAmmo")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")

    func preloadAssets() {
        yellowAmmoAtlas.preload { print ("yellowAmmoAtlas preloaded") }
        enemy_1Atlas.preload { print ("enemy_1Atlas preloaded") }
        enemy_2Atlas.preload { print ("enemy_2Atlas preloaded") }
        greenPowerUpAtlas.preload { print ("greenPowerUpAtlas preloaded") }
        bluePowerUpAtlas.preload { print ("bluePowerUpAtlas preloaded") }
        playerPlaneAtlas.preload { print ("playerPlaneAtlas preloaded") }
    }
}
