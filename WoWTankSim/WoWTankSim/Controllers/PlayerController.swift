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

    func setTalents(talents: [Int]) {
        guard let player = player else { return }
        player.talents.fifteen = talents[0]
        player.talents.twentyFive = talents[1]
        player.talents.thirty = talents[2]
        player.talents.thirtyFive = talents[3]
        player.talents.forty = talents[4]
        player.talents.fortyFive = talents[5]
        player.talents.fifty = talents[6]
    }
}
