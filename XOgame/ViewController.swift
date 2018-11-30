//
//  ViewController.swift
//  XOgame
//
//  Created by Djordje Kalezic on 30/11/2018.
//  Copyright © 2018 Djordje Kalezic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Player Names
    @IBOutlet weak var lblPlayerOneName: UILabel!
    @IBOutlet weak var lblPlayerTwoName: UILabel!
    //Who plays this turn
    @IBOutlet weak var lblPlayerPlays: UILabel!
    //What turn it is!
    @IBOutlet weak var lblTurn: UILabel!
    
    //Init Game
    let game = XoGame()
    //Seting the turn value
    var turn = 0 {
        didSet{
        lblTurn.text = "\(turn)"
        lblPlayerPlays.text = game.displayPlayerPlaying(turn: turn)
        }
    }
    
    //Loads stuf it is like OnCreate() - Android
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPlayerOneName.text = game.displayPlayerNames()[0]
        lblPlayerTwoName.text = game.displayPlayerNames()[1]
        turn = 0
    }
    
    @IBOutlet var allPositions: [UIButton]!
    
    @IBAction func onPositionSelected(_ sender: UIButton) {
        
        turn += 1
        let mark = game.displayMark(player_played: game.whoPlay(turn: turn).getPlayerName())
        let index = allPositions.index(of: sender)
        
        changeViewFromModel(mark: mark, index: index ?? 0)
    }
    
    func changeViewFromModel (mark:String, index:Int){
        let button = allPositions[index]
        button.setTitle(mark, for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
    
}

