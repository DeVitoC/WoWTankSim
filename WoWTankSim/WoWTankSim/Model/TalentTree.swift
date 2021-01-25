//
//  TalentTree.swift
//  WoWTankSim
//
//  Created by Christopher Devito on 1/25/21.
//

import Foundation

struct TalentTree {
    var fifteen: Int, twentyFive: Int, thirty: Int, thirtyFive: Int
    var forty: Int, fortyFive: Int, fifty: Int

    init(fifteen: Int, twentyFive: Int, thirty: Int, thirtyFive: Int,
         forty: Int, fortyFive: Int, fifty: Int) {
        self.fifteen = (fifteen >= 1 && fifteen <= 3) ? fifteen : 1
        self.twentyFive = (twentyFive >= 1 && twentyFive <= 3) ? twentyFive : 1
        self.thirty = (thirty >= 1 && thirty <= 3) ? thirty : 1
        self.thirtyFive = (thirtyFive >= 1 && thirtyFive <= 3) ? thirtyFive : 1
        self.forty = (forty >= 1 && forty <= 3) ? forty : 1
        self.fortyFive = (fortyFive >= 1 && fortyFive <= 3) ? fortyFive : 1
        self.fifty = (fifty >= 1 && fifty <= 3) ? fifty : 1
    }

}
