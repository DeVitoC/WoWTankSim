//
//  PlayerController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/26/21.
//

import Foundation

class PlayerController {

    func addPlayer(spec: Spec) -> Player {
        let player = Player(spec)

        return player
    }
}
