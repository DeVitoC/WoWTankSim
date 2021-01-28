//
//  SelectGearSourceViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectGearSourceViewController: UIViewController {

    var playerController = PlayerController()
    let mythicPlusLevels = ["M+ Level", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15+"]

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

        let lfrSwitch = createSwitch(1)
        let normalRaidSwitch = createSwitch(2)
        let heroicRaidSwitch = createSwitch(3)
        let mythicRaidSwitch = createSwitch(4)
        let worldBossSwitch = createSwitch(5)

        let dungeonLabel = createLabel(text: "Dungeons: ")
        let normalDungeonLabel = createLabel(text: "Normal: ")
        let heroicDungeonLabel = createLabel(text: "Heroic: ")
        let mythicDungeonLabel = createLabel(text: "Mythic: ")
        let mythicPlusLabel = createLabel(text: "Mythic+: ")

        let normalDungeonSwitch = createSwitch(6)
        let heroicDungeonSwitch = createSwitch(7)
        let mythicDungeonSwitch = createSwitch(8)
        let mythicPlusSwitch = createSwitch(9)

        let mythicPlusPicker = UIPickerView(frame: CGRect(x: view.frame.width/2, y: view.frame.height/2, width: 150, height: 50))

        let pvpLabel = createLabel(text: "PVP: ")
        let honorLabel = createLabel(text: "Honor: ")
        let conquestLabel = createLabel(text: "Conquest: ")

        let honorSwitch = createSwitch(10)
        let conquestSwitch = createSwitch(11)

        let craftedLabel = createLabel(text: "Crafted: ")
        let boeLabel = createLabel(text: "BOE: ")

        let craftedSwitch = createSwitch(12)
        let boeSwitch = createSwitch(13)

        let nextButton = createButton(text: "NEXT")

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
        view.addSubview(nextButton)

        // Setup PickerView
        mythicPlusPicker.dataSource = self
        mythicPlusPicker.delegate = self

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

            normalDungeonSwitch.topAnchor.constraint(equalTo: normalDungeonLabel.topAnchor),
            normalDungeonSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            heroicDungeonSwitch.topAnchor.constraint(equalTo: heroicDungeonLabel.topAnchor),
            heroicDungeonSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            mythicDungeonSwitch.topAnchor.constraint(equalTo: mythicDungeonLabel.topAnchor),
            mythicDungeonSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            mythicPlusSwitch.topAnchor.constraint(equalTo: mythicPlusLabel.topAnchor),
            mythicPlusSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            honorSwitch.topAnchor.constraint(equalTo: honorLabel.topAnchor),
            honorSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            conquestSwitch.topAnchor.constraint(equalTo: conquestLabel.topAnchor),
            conquestSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            craftedSwitch.topAnchor.constraint(equalTo: craftedLabel.topAnchor),
            craftedSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace),

            boeSwitch.topAnchor.constraint(equalTo: boeLabel.topAnchor),
            boeSwitch.leadingAnchor.constraint(equalTo: worldBossLabel.trailingAnchor, constant: smallSpace)
        ])

        // Constraints for Next Button
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

        // Add actions to Switches and buttons
        nextButton.addTarget(self, action: #selector(clickNext), for: .touchUpInside)
        lfrSwitch.addTarget(self, action: #selector(clickSwitch), for: .touchUpInside)
    }

    @objc func clickNext(_ sender: UIButton) {
        performSegue(withIdentifier: "SelectTalentsSegue", sender: self)
    }

    @objc func clickSwitch(_ sender: UISwitch) {
        var source: Source
        switch sender.tag {
        case 1:
            source = .RaidLFR
        case 2:
            source = .RaidNormal
        case 3:
            source = .RaidHeroic
        case 4:
            source = .RaidMythic
        case 5:
            source = .WorldBosses
        case 6:
            source = .DungeonNormal
        case 7:
            source = .DungeonHeroic
        case 8:
            source = .DungeonMythic
        case 9:
            source = .DungeonMythicPlus(2)
        case 10:
            source = .PVPHonor
        case 11:
            source = .PVPConquest
        case 12:
            source = .Crafted
        case 13:
            source = .BOE
        default:
            fatalError("Not a valid source for gear")
        }

        if sender.isOn {
            playerController.addSource(source: source)
        } else {
            playerController.removeSource(source: source)
        }
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectTalentsSegue" {
            guard let destinationVC = segue.destination as? SelectTalentsViewController else { return }

            destinationVC.playerController = playerController
        }
    }

}

extension SelectGearSourceViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        "\(mythicPlusLevels[row])"
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        NSLog("Temp")
    }
}

extension SelectGearSourceViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        14
    }
}
