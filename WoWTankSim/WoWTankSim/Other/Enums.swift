//
//  Enums.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import Foundation

enum Spec {
    case Blood, Vengeance, Guardian, Brewmaster
    case ProtectionPaladin, ProtectionWarrior
}

enum Source {
    case RaidLFR, RaidNormal, RaidHeroic, RaidMythic
    case WorldBosses
    case DungeonNormal, DungeonHeroic, DungeonMythic
    case DungeonMythicPlus(Int)
    case PVPHonor, PVPConquest, Crafted, BOE
}

enum Soulbind {
    case Kyrian
    case NightFae
    case Venthyr
    case Necrolord
}
