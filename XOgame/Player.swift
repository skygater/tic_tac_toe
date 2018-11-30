//
//  Player.swift
//  XOgame
//
//  Created by Djordje Kalezic on 30/11/2018.
//  Copyright © 2018 Djordje Kalezic. All rights reserved.
//

import Foundation

struct Player {
    
    private var name: String
    private var mark: Mark
    private var score: Int
    
    init(name:String, mark:Mark, score:Int) {
        self.name = name;
        self.mark = mark;
        self.score = score;
    }
    func getPlayerName() -> String{
        return self.name
    }
    func getMark() -> String{
        return "\(mark)"
    }
    
    enum Mark: String, CustomStringConvertible{
       
        case markX = "𝗫"
        case makrO = "O"
        static var all = [Mark.markX, .makrO]
        
        var description: String { return rawValue}
    }
    

}


