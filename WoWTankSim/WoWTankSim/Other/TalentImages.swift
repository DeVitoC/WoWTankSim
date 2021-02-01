//
//  TalentImages.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 2/1/21.
//

import Foundation

protocol SpecImages {
    var talentImages: [String] {get}
}

class ProtectionPaladin: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer",
                        "first_avenger", "crusaders_judgment", "moment_of_glory",
                        "fist_of_justice", "repentance", "blinding_light",
                        "unbreakable_spirit", "cavalier", "blessing_of_spellwarding",
                        "divine_purpose", "holy_avenger", "seraphim",
                        "hand_of_the_protector", "consecrated_ground", "judgment_of_light",
                        "sanctified_wrath", "righteous_protector", "final_stand"]
}

struct ProtectionWarrior: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
}

class Blood: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
}

struct Vengeance: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
}

struct Brewmaster: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
}

struct Guardian: SpecImages {
    var talentImages = ["holy_shield", "redoubt", "blessed_hammer"]
}

