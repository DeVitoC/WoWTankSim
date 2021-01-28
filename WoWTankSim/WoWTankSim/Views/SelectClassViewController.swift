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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIElements()
    }

    func setupUIElements() {
        // Create UI Elements
        let header = createHeader(xPos: Int(view.frame.width/2 - 125), text1: "Welcome!", text2: "Click a Class Below to Sim")
        let paladinButton = createButton(text: "PALADIN")
        let warriorButton = createButton(text: "WARRIOR")
        let dkButton = createButton(text: "DEATH KNIGHT")
        let dhButton = createButton(text: "DEMON HUNTER")
        let druidButton = createButton(text: "DRUID")
        let monkButton = createButton(text: "MONK")
        let importButton = createButton(text: "IMPORT YOUR CHARACTER")
        let buttonStackView = UIStackView(arrangedSubviews: [dhButton, dkButton, druidButton, monkButton, paladinButton, warriorButton, importButton])

        // Add elements to UI with constraints
        view.addSubview(header)
        view.addSubview(buttonStackView)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
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

    @objc func clickSpec(_ sender: Any) {
        performSegue(withIdentifier: "SelectSourceSegue", sender: self)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectSourceSegue" {
            guard let destinationVC = segue.destination as? SelectGearSourceViewController else { return }

            destinationVC.player = playerController.addPlayer(spec: Spec.ProtectionPaladin)
        }
    }

}
