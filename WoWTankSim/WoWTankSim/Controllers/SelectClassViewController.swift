//
//  SelectClassViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectClassViewController: UIViewController {

    // MARK: - Properties
    let header = createHeader(text1: "Welcome!", text2: "Click a Class Below to Sim")
    let paladinButton = createButton(text: "PALADIN")
    let nextButton = createButton(text: "NEXT")

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(header)
        view.addSubview(paladinButton)
        view.addSubview(nextButton)

        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paladinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paladinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        // Do any additional setup after loading the view.
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
