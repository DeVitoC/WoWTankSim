//
//  UIElements.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/26/21.
//

import UIKit

func createButton(text: String, bgColor: UIColor = .purple) -> UIButton {
    let button = UIButton()
    button.setTitle(text, for: .normal)
    button.backgroundColor = bgColor
    button.tintColor = .white

    return button
}

func createHeader(text1: String, text2: String?) -> UIView {
    let headerView = UIView()
    let label1 = UILabel()
    let label2 = UILabel()
    let stackView = UIStackView()

    headerView.frame = CGRect(x: 0, y: 0, width: 500, height: 200)
    headerView.backgroundColor = .systemIndigo
    label1.tintColor = .black
    label1.text = text1
    
    headerView.addSubview(stackView)

    if text2 != nil {
        label2.tintColor = .black
        label2.text = text2

    }


    return headerView
}
