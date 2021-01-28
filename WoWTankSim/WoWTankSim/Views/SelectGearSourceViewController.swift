//
//  SelectGearSourceViewController.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import UIKit

class SelectGearSourceViewController: UIViewController {

    let playerController = PlayerController()
    var player: Player?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func setupUIElements() {
        let header = createHeader(xPos: Int(view.frame.width/2 - 125),
                                  text1: "Select Your Sources of Gear")

        let raidLabel = UILabel()
        let lfrLabel = UILabel()
        let normalRaidLabel = UILabel()
        let heroicRaidLabel = UILabel()
        let mythicRaidLabel = UILabel()
        let worldBossLabel = UILabel()

        let dungeonLabel = UILabel()
        let normalDungeonLabel = UILabel()
        let heroicDungeonLabel = UILabel()
        let mythicDungeonLabel = UILabel()
        let mythicPlusLabel = UILabel()

        let pvpLabel = UILabel()
        let honorLabel = UILabel()
        let conquestLabel = UILabel()

        let craftedLabel = UILabel()
        let boeLabel = UILabel()


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
