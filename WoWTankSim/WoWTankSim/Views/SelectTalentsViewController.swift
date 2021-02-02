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
    var spec: SpecInfo?

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

        let nextButton = createButton(text: "My Talents")
        let defautlRaidTalentsButton = createButton(text: "Raid Talents")
        let defaultMPlusTalentsButton = createButton(text: "M+ Talents")
        let buttonStack = createStackView()

        // Add Elements to UI
        view.addSubview(header)
        view.addSubview(talentStack)
        view.addSubview(buttonStack)
        talentStack.addArrangedSubview(rowFifteenStack)
        talentStack.addArrangedSubview(rowTwentyFiveStack)
        talentStack.addArrangedSubview(rowThirtyStack)
        talentStack.addArrangedSubview(rowThirtyFiveStack)
        talentStack.addArrangedSubview(rowFortyStack)
        talentStack.addArrangedSubview(rowFortyFiveStack)
        talentStack.addArrangedSubview(rowFiftyStack)
        buttonStack.addArrangedSubview(defautlRaidTalentsButton)
        buttonStack.addArrangedSubview(defaultMPlusTalentsButton)
        buttonStack.addArrangedSubview(nextButton)

        // StackView settings
        talentStack.axis = .vertical
        talentStack.alignment = .fill
        talentStack.distribution = .fillEqually
        talentStack.spacing = smallSpace
        buttonStack.spacing = smallSpace

        // Segue Buttons settings
        nextButton.addTarget(self, action: #selector(clickNext), for: .touchUpInside)
        defautlRaidTalentsButton.tag = 101
        defaultMPlusTalentsButton.tag = 102
        defautlRaidTalentsButton.addTarget(self, action: #selector(clickDefualtTalents), for: .touchUpInside)
        defaultMPlusTalentsButton.addTarget(self, action: #selector(clickDefualtTalents), for: .touchUpInside)

        // Add Constraints for UI elements
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            talentStack.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 20),
            talentStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            talentStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),

            buttonStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            buttonStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
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
        case 0...2:
            fifteen = sender.tag + 1
            rowFifteenStack.arrangedSubviews[0].backgroundColor = .gray
            rowFifteenStack.arrangedSubviews[1].backgroundColor = .gray
            rowFifteenStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 3...5:
            twentyFive = sender.tag - 2
            rowTwentyFiveStack.arrangedSubviews[0].backgroundColor = .gray
            rowTwentyFiveStack.arrangedSubviews[1].backgroundColor = .gray
            rowTwentyFiveStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 6...8:
            thirty = sender.tag - 5
            rowThirtyStack.arrangedSubviews[0].backgroundColor = .gray
            rowThirtyStack.arrangedSubviews[1].backgroundColor = .gray
            rowThirtyStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 9...11:
            thirtyFive = sender.tag - 8
            rowThirtyFiveStack.arrangedSubviews[0].backgroundColor = .gray
            rowThirtyFiveStack.arrangedSubviews[1].backgroundColor = .gray
            rowThirtyFiveStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 12...14:
            forty = sender.tag - 11
            rowFortyStack.arrangedSubviews[0].backgroundColor = .gray
            rowFortyStack.arrangedSubviews[1].backgroundColor = .gray
            rowFortyStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 15...17:
            fortyFive = sender.tag - 14
            rowFortyFiveStack.arrangedSubviews[0].backgroundColor = .gray
            rowFortyFiveStack.arrangedSubviews[1].backgroundColor = .gray
            rowFortyFiveStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        case 18...20:
            fifty = sender.tag - 17
            rowFiftyStack.arrangedSubviews[0].backgroundColor = .gray
            rowFiftyStack.arrangedSubviews[1].backgroundColor = .gray
            rowFiftyStack.arrangedSubviews[2].backgroundColor = .gray
            sender.backgroundColor = mainColor
        default:
            NSLog("Not a valid button")
        }
    }

    @objc func clickNext(_ sender: UIButton) {
        playerController?.setTalents(talents: [fifteen, twentyFive, thirty, thirtyFive, forty, fortyFive, fifty])
        performSegue(withIdentifier: "SelectSoulbindSegue", sender: self)
    }

    @objc func clickDefualtTalents(_ sender: UIButton) {
        guard let spec = spec else { return }
        if sender.tag == 101 {
            playerController?.setTalents(talents: [spec.raidTalents.fifteen,
                                                   spec.raidTalents.twentyFive,
                                                   spec.raidTalents.thirty,
                                                   spec.raidTalents.thirtyFive,
                                                   spec.raidTalents.forty,
                                                   spec.raidTalents.fortyFive,
                                                   spec.raidTalents.fifty])
        } else {
            playerController?.setTalents(talents: [spec.mPlusTalents.fifteen,
                                                   spec.mPlusTalents.twentyFive,
                                                   spec.mPlusTalents.thirty,
                                                   spec.mPlusTalents.thirtyFive,
                                                   spec.mPlusTalents.forty,
                                                   spec.mPlusTalents.fortyFive,
                                                   spec.mPlusTalents.fifty])
        }
        performSegue(withIdentifier: "SelectSoulbindSegue", sender: self)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectSoulbindSegue" {
            guard let destinationVC = segue.destination as? SelectSoulbindViewController else { return }

            destinationVC.playerController = playerController
        }
    }
}
