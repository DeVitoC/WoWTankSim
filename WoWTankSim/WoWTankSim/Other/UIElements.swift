//
//  UIElements.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/26/21.
//

import UIKit

func createButton(text: String, bgColor: UIColor = .purple) -> UIButton {
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)
    button.backgroundColor = bgColor
    button.tintColor = .white

    return button
}

func createHeader(xPos: Int, text1: String, text2: String?) -> UIView {
    let headerView = UIView(frame: CGRect(x: xPos, y: 80, width: 250, height: 70))
    let label1 = UILabel()
    let label2 = UILabel()
    let stackView = UIStackView()

//    headerView.translatesAutoresizingMaskIntoConstraints = false
    label1.translatesAutoresizingMaskIntoConstraints = false
    stackView.translatesAutoresizingMaskIntoConstraints = false

    headerView.backgroundColor = .systemIndigo
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
