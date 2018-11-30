//
//  XoGame.swift
//  XOgame
//
//  Created by Djordje Kalezic on 30/11/2018.
//  Copyright © 2018 Djordje Kalezic. All rights reserved.
//

import Foundation

class XoGame{
    
    private var player1: Player
    private var player2: Player
    
    //Init players -- future development - let people add their names! 
    init() {
        self.player1 = Player(name:"Player 1", mark: Player.Mark.all[0], score: 0)
        self.player2 = Player(name:"Player 2", mark: Player.Mark.all[1], score: 0)
    }
    
    //Display Mark
    func displayMark (player_played player:String) -> String {
        if player.elementsEqual(player1.getPlayerName()){
            return player1.getMark()
        }else{
            return player2.getMark()
        }
    }
    //TurnsWhoPlay
    func whoPlay(turn num: Int) -> Player{
        if num%2 == 1 {
            return player2
        }else{
            return player1
        }
    }
    
    //Display player playing
    func displayPlayerPlaying(turn num:Int)-> String{
        let player = whoPlay(turn: num)
        return player.getPlayerName()
    }
    
    //Display player Names
    func displayPlayerNames()-> [String]{
        let arrayName = [player1.getPlayerName(),player2.getPlayerName()]
        return arrayName
    }
    
    
}
