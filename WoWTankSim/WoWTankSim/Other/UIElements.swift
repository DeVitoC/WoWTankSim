//
//  UIElements.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/26/21.
//

import UIKit

// MARK: - Constants
let mainColor = UIColor.purple
let secondColor = UIColor.systemIndigo
let groupSpace: CGFloat = 15
let smallSpace: CGFloat = 5

func createButton(text: String, bgColor: UIColor = mainColor) -> UIButton {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.backgroundColor = bgColor
    button.tintColor = .white

    return button
}

func createHeader(xPos: Int, text1: String, text2: String? = nil) -> UIView {
    let headerView = UIView(frame: CGRect(x: xPos, y: 80, width: 250, height: 70))
    let label1 = UILabel()
    let label2 = UILabel()
    let stackView = UIStackView()

//    headerView.translatesAutoresizingMaskIntoConstraints = false
    label1.translatesAutoresizingMaskIntoConstraints = false
    stackView.translatesAutoresizingMaskIntoConstraints = false

    headerView.backgroundColor = secondColor
    label1.tintColor = .black
    label1.text = text1
    stackView.axis = .vertical
    stackView.alignment = .center
    stackView.addArrangedSubview(label1)

    headerView.addSubview(stackView)
    NSLayoutConstraint.activate([
        stackView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor),
        stackView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor)
    ])

    if text2 != nil {
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.tintColor = .black
        label2.text = text2
        stackView.addArrangedSubview(label2)
    }


    return headerView
}

func createLabel(text: String) -> UILabel {
    let label = UILabel()
    label.text = text
    label.translatesAutoresizingMaskIntoConstraints = false

    return label
}

func createSwitch() -> UISwitch {
    let switch1 = UISwitch(frame: CGRect(x: 0, y: 0, width: 30, height: 15))
    switch1.translatesAutoresizingMaskIntoConstraints = false
    switch1.isOn = false
    switch1.onTintColor = mainColor
    switch1.set(width: 30, height: 20)

    return switch1
}
