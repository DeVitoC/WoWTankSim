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
    case Kyrian(KyrianSoulbind)
    case NightFae(NightFaeSoulbind)
    case Venthyr(VenthyrSoulbind)
    case Necrolord(NecrolordSoulbind)

    enum KyrianSoulbind {
        case Pelagos
        case Kleia
        case Mikanikos
    }

    enum NightFaeSoulbind {
        case Niya
        case Dreamweaver
        case Korayn
    }

    enum VenthyrSoulbind {
        case Nadjia
        case Theotar
        case Draven
    }

    enum NecrolordSoulbind {
        case Marileth
        case Emeni
        case Heirmir
    }
}

