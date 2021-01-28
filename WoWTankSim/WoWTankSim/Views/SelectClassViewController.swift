//
//  SelectClassViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectClassViewController: UIViewController {

    // MARK: - Properties
    let playerController = PlayerController()
    var player: Player?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIElements()
    }

    func setupUIElements() {
        // Create UI Elements
        let header = createHeader(xPos: Int(view.frame.width/2 - 125),
                                  text1: "Welcome!",
                                  text2: "Click a Class Below to Sim")
        let dhButton = createButton(text: "DEMON HUNTER")
        let dkButton = createButton(text: "DEATH KNIGHT")
        let druidButton = createButton(text: "DRUID")
        let monkButton = createButton(text: "MONK")
        let paladinButton = createButton(text: "PALADIN")
        let warriorButton = createButton(text: "WARRIOR")
        let importButton = createButton(text: "IMPORT YOUR CHARACTER")

        // Temporarily tint disabled buttons gray
        dhButton.backgroundColor = .gray
        dkButton.backgroundColor = .gray
        druidButton.backgroundColor = .gray
        monkButton.backgroundColor = .gray
        warriorButton.backgroundColor = .gray
        importButton.backgroundColor = .gray

        // Add elements to UI
        view.addSubview(header)
        view.addSubview(dhButton)
        view.addSubview(dkButton)
        view.addSubview(druidButton)
        view.addSubview(monkButton)
        view.addSubview(paladinButton)
        view.addSubview(warriorButton)
        view.addSubview(importButton)

        // Add constraints for ui elements
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dhButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dhButton.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20),
            dkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dkButton.topAnchor.constraint(equalTo: dhButton.bottomAnchor, constant: 10),
            druidButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            druidButton.topAnchor.constraint(equalTo: dkButton.bottomAnchor, constant: 10),
            monkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            monkButton.topAnchor.constraint(equalTo: druidButton.bottomAnchor, constant: 10),
            paladinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paladinButton.topAnchor.constraint(equalTo: monkButton.bottomAnchor, constant: 10),
            warriorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            warriorButton.topAnchor.constraint(equalTo: paladinButton.bottomAnchor, constant: 10),
            importButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            importButton.topAnchor.constraint(equalTo: warriorButton.bottomAnchor, constant: 10),
        ])

        // Add actions to buttons
        paladinButton.addTarget(self, action: #selector(clickSpec), for: .touchUpInside)

        // Add tags to buttons to reference them
        dhButton.tag = 1
        dkButton.tag = 2
        druidButton.tag = 3
        monkButton.tag = 4
        paladinButton.tag = 5
        warriorButton.tag = 6
        importButton.tag = 7
    }

    @objc func clickSpec(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            player = playerController.addPlayer(spec: .Vengeance)
        case 2:
            player = playerController.addPlayer(spec: .Blood)
        case 3:
            player = playerController.addPlayer(spec: .Guardian)
        case 4:
            player = playerController.addPlayer(spec: .Brewmaster)
        case 5:
            player = playerController.addPlayer(spec: .ProtectionPaladin)
        case 6:
            player = playerController.addPlayer(spec: .ProtectionWarrior)
        default:
            NSLog("Not a valid spec")
        }
        performSegue(withIdentifier: "SelectSourceSegue", sender: self)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectSourceSegue" {
            guard let destinationVC = segue.destination as? SelectGearSourceViewController else { return }

            destinationVC.player = player
        }
    }

}
