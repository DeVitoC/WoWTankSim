//
//  SelectSoulbindViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectSoulbindViewController: UIViewController {

    var playerController: PlayerController?
    var soulbind: Soulbind = .Kyrian(.Pelagos)
    var covenantPicker = UIPickerView()
    var soulbindPicker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()

    }

    func setupHeader() {
        let header = createHeader(xPos: Int(view.frame.width/2 - 125), text1: "Select Your Soulbind")
        view.addSubview(header)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    func setupPickerViews() {

        // Set dataSource and delegate
        covenantPicker.dataSource = self
        covenantPicker.delegate = self
        soulbindPicker.dataSource = self
        soulbindPicker.delegate = self

        // Set translates mask to false
        covenantPicker.translatesAutoresizingMaskIntoConstraints = false
        soulbindPicker.translatesAutoresizingMaskIntoConstraints = false

        // Add to View
        view.addSubview(covenantPicker)
        view.addSubview(soulbindPicker)

        // Add constraints
        NSLayoutConstraint.activate([
            covenantPicker.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>)
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

extension SelectSoulbindViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        4
    }


}

extension SelectSoulbindViewController: UIPickerViewDelegate {

}
