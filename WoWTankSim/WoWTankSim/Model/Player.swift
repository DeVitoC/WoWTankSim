//
//  Player.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import Foundation

struct Player {
    var spec: Spec
    var source: [Source]
    var talents: TalentTree
    var soulbind: Soulbind //Need to finish setting up soulbind/conduit information when I get to that screen
    var legendary: String //Need to update to Legendary enum or protocol
    var Style: Int //Int representing the percent offensive. Might need to be updates when adapting the app to other roles

    init(_ spec: Spec) {
        self.spec = spec
        self.source = []
        self.talents = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
        self.soulbind = Soulbind.Kyrian(.Pelagos)
        self.legendary = ""
        self.Style = 75
    }
}
