//
//  SelectClassViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectClassViewController: UIViewController {

    let playerController = PlayerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        let header = createHeader(xPos: Int(view.frame.width/2 - 125), text1: "Welcome!", text2: "Click a Class Below to Sim")
        let paladinButton = createButton(text: "PALADIN")

        view.addSubview(header)
        view.addSubview(paladinButton)

        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paladinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paladinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])

        paladinButton.addTarget(self, action: #selector(clickSpec), for: .touchUpInside)

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
