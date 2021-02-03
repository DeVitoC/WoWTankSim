//
//  SelectSoulbindViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

/// ViewController that displays the interface to choose their Covenant and Soulbind
class SelectSoulbindViewController: UIViewController {

    var playerController: PlayerController?
    var soulbind: Soulbind = .Kyrian(.Pelagos)
    var covenantPicker: UIPickerView!
    var soulbindPicker: UIPickerView!
    var header: UIView!
    var covenantItem = 0
    let covenantsData = ["Kyrian", "Night Fae", "Necrolord", "Venthyr"]
    let soulbindsData = [["Pelagos", "Kleia", "Mikanikos"], ["Niya", "Dreamweaver", "Korayn"], ["Marileth", "Emeni", "Heirmir"], ["Nadjia", "Theotar", "Draven"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeader()
        setupPickerViews()
    }

    func setupHeader() {
        header = createHeader(xPos: Int(view.frame.width/2 - 125), text1: "Select Your Soulbind")
        view.addSubview(header)
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    func setupPickerViews() {

        // Set frames
        covenantPicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: 150, height: 50))
        soulbindPicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: 150, height: 50))

        // Set dataSource and delegate
        covenantPicker.dataSource = self
        covenantPicker.delegate = self
        soulbindPicker.dataSource = self
        soulbindPicker.delegate = self

        // Set tags
        covenantPicker.tag = 0
        soulbindPicker.tag = 1

        // Set translates mask to false
        covenantPicker.translatesAutoresizingMaskIntoConstraints = false
        soulbindPicker.translatesAutoresizingMaskIntoConstraints = false

        // Add to View
        view.addSubview(covenantPicker)
        view.addSubview(soulbindPicker)

        // Add constraints
        NSLayoutConstraint.activate([
            covenantPicker.topAnchor.constraint(equalTo: header.bottomAnchor, constant: groupSpace),
            covenantPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            covenantPicker.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08),
            covenantPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),

            soulbindPicker.topAnchor.constraint(equalTo: covenantPicker.bottomAnchor, constant: -groupSpace),
            soulbindPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            soulbindPicker.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08),
            soulbindPicker.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
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
        if pickerView.tag == 0 {
            return covenantsData.count
        } else {
            return soulbindsData[0].count
        }
    }

}

extension SelectSoulbindViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return covenantsData[row]
        } else {
            return soulbindsData[covenantItem][row]
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            covenantItem = row
            soulbindPicker.selectRow(0, inComponent: 0, animated: false)
            soulbindPicker.reloadComponent(0)
        }
    }
}
