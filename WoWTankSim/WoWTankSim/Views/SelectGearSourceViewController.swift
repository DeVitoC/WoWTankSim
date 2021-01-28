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
        setupUIElements()
    }

    func setupUIElements() {
        // Create UI elements
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

        let mythicPlusPicker = UIPickerView()

        let pvpLabel = createLabel(text: "PVP: ")
        let honorLabel = createLabel(text: "Honor: ")
        let conquestLabel = createLabel(text: "Conquest: ")

        let honorSwitch = createSwitch()
        let conquestSwitch = createSwitch()

        let craftedLabel = createLabel(text: "Crafted: ")
        let boeLabel = createLabel(text: "BOE: ")

        let craftedSwitch = createSwitch()
        let boeSwitch = createSwitch()

        // Add Elements to UI
        view.addSubview(header)
        view.addSubview(raidLabel)
        view.addSubview(lfrLabel)
        view.addSubview(normalRaidLabel)
        view.addSubview(heroicRaidLabel)
        view.addSubview(mythicRaidLabel)
        view.addSubview(worldBossLabel)
        view.addSubview(lfrSwitch)
        view.addSubview(normalRaidSwitch)
        view.addSubview(heroicRaidSwitch)
        view.addSubview(mythicRaidSwitch)
        view.addSubview(worldBossSwitch)
        view.addSubview(dungeonLabel)
        view.addSubview(normalDungeonLabel)
        view.addSubview(heroicDungeonLabel)
        view.addSubview(mythicDungeonLabel)
        view.addSubview(mythicPlusLabel)
        view.addSubview(normalDungeonSwitch)
        view.addSubview(heroicDungeonSwitch)
        view.addSubview(mythicDungeonSwitch)
        view.addSubview(mythicPlusSwitch)
        view.addSubview(mythicPlusPicker)
        view.addSubview(pvpLabel)
        view.addSubview(honorLabel)
        view.addSubview(conquestLabel)
        view.addSubview(honorSwitch)
        view.addSubview(conquestSwitch)
        view.addSubview(craftedLabel)
        view.addSubview(boeLabel)
        view.addSubview(craftedSwitch)
        view.addSubview(boeSwitch)

        // Add constraints for header and labels
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            raidLabel.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20),
            raidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            lfrLabel.topAnchor.constraint(equalTo: raidLabel.bottomAnchor),
            lfrLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            normalRaidLabel.topAnchor.constraint(equalTo: lfrLabel.bottomAnchor),
            normalRaidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            heroicRaidLabel.topAnchor.constraint(equalTo: normalRaidLabel.bottomAnchor),
            heroicRaidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            mythicRaidLabel.topAnchor.constraint(equalTo: heroicRaidLabel.bottomAnchor),
            mythicRaidLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            worldBossLabel.topAnchor.constraint(equalTo: mythicRaidLabel.bottomAnchor, constant: groupSpace),
            worldBossLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            dungeonLabel.topAnchor.constraint(equalTo: worldBossLabel.bottomAnchor, constant: groupSpace),
            dungeonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            normalDungeonLabel.topAnchor.constraint(equalTo: dungeonLabel.bottomAnchor),
            normalDungeonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            heroicDungeonLabel.topAnchor.constraint(equalTo: normalDungeonLabel.bottomAnchor),
            heroicDungeonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            mythicDungeonLabel.topAnchor.constraint(equalTo: heroicDungeonLabel.bottomAnchor),
            mythicDungeonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            mythicPlusLabel.topAnchor.constraint(equalTo: mythicDungeonLabel.bottomAnchor),
            mythicPlusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            pvpLabel.topAnchor.constraint(equalTo: mythicPlusLabel.bottomAnchor, constant: groupSpace),
            pvpLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            honorLabel.topAnchor.constraint(equalTo: pvpLabel.bottomAnchor),
            honorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            conquestLabel.topAnchor.constraint(equalTo: honorLabel.bottomAnchor),
            conquestLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            craftedLabel.topAnchor.constraint(equalTo: conquestLabel.bottomAnchor, constant: groupSpace),
            craftedLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),

            boeLabel.topAnchor.constraint(equalTo: craftedLabel.bottomAnchor),
            boeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: smallSpace),
        ])

        // Add constraints for Switches
        NSLayoutConstraint.activate([
            lfrSwitch.topAnchor.constraint(equalTo: lfrLabel.topAnchor),
            lfrSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            normalRaidSwitch.topAnchor.constraint(equalTo: normalRaidLabel.topAnchor),
            normalRaidSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            heroicRaidSwitch.topAnchor.constraint(equalTo: heroicRaidLabel.topAnchor),
            heroicRaidSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            mythicRaidSwitch.topAnchor.constraint(equalTo: mythicRaidLabel.topAnchor),
            mythicRaidSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            worldBossSwitch.topAnchor.constraint(equalTo: worldBossLabel.topAnchor),
            worldBossSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),
        ])
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
