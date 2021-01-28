//
//  SelectGearSourceViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectGearSourceViewController: UIViewController {

    let playerController = PlayerController()
    var player: Player?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func setupUIElements() {
        let header = createHeader(xPos: Int(view.frame.width/2 - 125),
                                  text1: "Select Your Sources of Gear")

        let raidLabel = createLabel(text: "Raid: ")
        let lfrLabel = createLabel(text: "LFR: ")
        let normalRaidLabel = createLabel(text: "Normal: ")
        let heroicRaidLabel = createLabel(text: "Heroic: ")
        let mythicRaidLabel = createLabel(text: "Mythic: ")
        let worldBossLabel = createLabel(text: "World Bosses: ")

        let lfrSwitch = createSwitch()
        let normalRaidSwitch = createSwitch()
        let heroicRaidSwitch = createSwitch()
        let mythicRaidSwitch = createSwitch()
        let worldBossSwitch = createSwitch()

        let dungeonLabel = createLabel(text: "Dungeons: ")
        let normalDungeonLabel = createLabel(text: "Normal: ")
        let heroicDungeonLabel = createLabel(text: "Heroic: ")
        let mythicDungeonLabel = createLabel(text: "Mythic: ")
        let mythicPlusLabel = createLabel(text: "Mythic+: ")

        let normalDungeonSwitch = createSwitch()
        let heroicDungeonSwitch = createSwitch()
        let mythicDungeonSwitch = createSwitch()
        let mythicPlusSwitch = createSwitch()

        let pvpLabel = createLabel(text: "PVP: ")
        let honorLabel = createLabel(text: "Honor: ")
        let conquestLabel = createLabel(text: "Conquest: ")

        let honorSwitch = createSwitch()
        let conquestSwitch = createSwitch()

        let craftedLabel = createLabel(text: "Crafted: ")
        let boeLabel = createLabel(text: "BOE: ")

        let craftedSwitch = createSwitch()
        let boeSwitch = createSwitch()


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
