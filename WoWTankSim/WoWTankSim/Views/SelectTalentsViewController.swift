//
//  SelectTalentsViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectTalentsViewController: UIViewController {

    // MARK: - Properties
    var playerController: PlayerController?
    var spec: SpecImages?

    var rowFifteenStack: UIStackView!
    var rowTwentyFiveStack: UIStackView!
    var rowThirtyStack: UIStackView!
    var rowThirtyFiveStack: UIStackView!
    var rowFortyStack: UIStackView!
    var rowFortyFiveStack: UIStackView!
    var rowFiftyStack: UIStackView!

    var fifteen = 1
    var twentyFive = 1
    var thirty = 1
    var thirtyFive = 1
    var forty = 1
    var fortyFive = 1
    var fifty = 1

    // MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        setSpec()
        setUpUIElements()
    }

    func setSpec() {
        guard let player = playerController?.player else { return }
        switch player.spec {
        case .Blood:
            spec = Blood()
        case .Vengeance:
            spec = Vengeance()
        case .Guardian:
            spec = Guardian()
        case .Brewmaster:
            spec = Brewmaster()
        case .ProtectionPaladin:
            spec = ProtectionPaladin()
        case .ProtectionWarrior:
            spec = ProtectionWarrior()
        }
    }

    func setUpUIElements() {
        // Create UI elements
        let header = createHeader(xPos: Int(view.frame.width/2 - 125),
                                  text1: "Select Your Talents")
        let talentStack = createStackView(axis: .vertical)
        rowFifteenStack = createTalentRow(tag1: 0, tag2: 1, tag3: 2)
        rowTwentyFiveStack = createTalentRow(tag1: 3, tag2: 4, tag3: 5)
        rowThirtyStack = createTalentRow(tag1: 6, tag2: 7, tag3: 8)
        rowThirtyFiveStack = createTalentRow(tag1: 9, tag2: 10, tag3: 11)
        rowFortyStack = createTalentRow(tag1: 12, tag2: 13, tag3: 14)
        rowFortyFiveStack = createTalentRow(tag1: 15, tag2: 16, tag3: 17)
        rowFiftyStack = createTalentRow(tag1: 18, tag2: 19, tag3: 20)

        let nextButton = createButton(text: "NEXT")

        // Add Elements to UI
        view.addSubview(header)
        view.addSubview(talentStack)
        view.addSubview(nextButton)
        talentStack.addArrangedSubview(rowFifteenStack)
        talentStack.addArrangedSubview(rowTwentyFiveStack)
        talentStack.addArrangedSubview(rowThirtyStack)
        talentStack.addArrangedSubview(rowThirtyFiveStack)
        talentStack.addArrangedSubview(rowFortyStack)
        talentStack.addArrangedSubview(rowFortyFiveStack)
        talentStack.addArrangedSubview(rowFiftyStack)

        // talentStack settings
        talentStack.axis = .vertical
        talentStack.alignment = .fill
        talentStack.distribution = .fillEqually
        talentStack.spacing = smallSpace

        // Add Constraints for UI elements
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            talentStack.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20),
            talentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            talentStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),

            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }

    // MARK: - Actions
    func createTalentRow(tag1: Int, tag2: Int, tag3: Int) -> UIStackView {
        guard let spec = spec else { return UIStackView() }
        let stackView = createStackView()
        let button1 = createButton(image: spec.talentImages[tag1], bgColor: .gray)
        let button2 = createButton(image: spec.talentImages[tag2], bgColor: .gray)
        let button3 = createButton(image: spec.talentImages[tag3], bgColor: .gray)

        button1.tag = tag1
        button2.tag = tag2
        button3.tag = tag3
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)

        button1.addTarget(self, action: #selector(clickTalent), for: .touchUpInside)
        button2.addTarget(self, action: #selector(clickTalent), for: .touchUpInside)
        button3.addTarget(self, action: #selector(clickTalent), for: .touchUpInside)

        return stackView
    }

    @objc func clickTalent(_ sender: UIButton) {
        switch sender.tag {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
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
