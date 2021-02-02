//
//  TalentImages.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 2/1/21.
//

import Foundation

protocol SpecInfo {
    var talentImages: [String] {get}
    var raidTalents: TalentTree {get}
    var mPlusTalents: TalentTree {get}
}

struct ProtectionPaladin: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer",
                        "first_avenger", "crusaders_judgment", "moment_of_glory",
                        "fist_of_justice", "repentance", "blinding_light",
                        "unbreakable_spirit", "cavalier", "blessing_of_spellwarding",
                        "divine_purpose", "holy_avenger", "seraphim",
                        "hand_of_the_protector", "consecrated_ground", "judgment_of_light",
                        "sanctified_wrath", "righteous_protector", "final_stand"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 2, thirty: 3, thirtyFive: 1, forty: 1, fortyFive: 3, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 3, thirtyFive: 1, forty: 1, fortyFive: 2, fifty: 3)
}

struct ProtectionWarrior: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
}

struct Blood: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
}

struct Vengeance: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
}

struct Brewmaster: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
}

struct Guardian: SpecInfo {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
    var raidTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
    var mPlusTalents: TalentTree = TalentTree(fifteen: 1, twentyFive: 1, thirty: 1, thirtyFive: 1, forty: 1, fortyFive: 1, fifty: 1)
}

