//
//  PlayerController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/26/21.
//

import Foundation

class PlayerController {

    var player: Player?

    func addPlayer(spec: Spec) {
        player = Player(spec)
    }

    func addSource(source: Source) {
        guard let player = player else {
            return
        }
        player.source.append(source)
    }

    func removeSource(source: Source) {
        guard let player = player else {
            return
        }
        player.source.removeAll(where: {$0 == source})
    }
}
