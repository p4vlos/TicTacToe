//
//  ViewController.swift
//  Tic Tac Toe game
//
//  Created by Pavlos Nicolaou on 28/10/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
   
    var gameStart = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var playerTurn = 1
    var btnPressed1 = [0,0,0]
    var btnPressed2 = [0,0,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set player 1
        playerTurn = 1
        //update turn label
        turnLabel.text = "It is Player's \(playerTurn) turn!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetButton(_ sender: Any) {
        
        //clear button
        btn1.setTitle(" ", for: .normal)
        btn2.setTitle(" ", for: .normal)
        btn3.setTitle(" ", for: .normal)
        btn4.setTitle(" ", for: .normal)
        btn5.setTitle(" ", for: .normal)
        btn6.setTitle(" ", for: .normal)
        btn7.setTitle(" ", for: .normal)
        btn8.setTitle(" ", for: .normal)
        btn9.setTitle(" ", for: .normal)

        //update turn label
        playerTurn = 1
        turnLabel.text = "It is Player's \(playerTurn) turn!"
        
        //enable buttons
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        btn9.isEnabled = true
        
        
    }
    
    @IBAction func btnPressed(sender: UIButton) {
        //add a for loop
        if playerTurn == 1 {
            sender.setTitle("X", for: .normal)
            sender.isEnabled = false
            btnPressed1[0] = sender.tag
            playerPlayed()
        } else if playerTurn == 2 {
            sender.setTitle("O", for: .normal)
            sender.isEnabled = false
            btnPressed2[0] = sender.tag
            playerPlayed()
        }
        
    }
    
    func playerPlayed() {
        if playerTurn == 1 {
            playerTurn = 2
            turnLabel.text = "It is Player's \(playerTurn) turn!"
        } else if playerTurn == 2 {
            playerTurn = 1
            turnLabel.text = "It is Player's \(playerTurn) turn!"
        }
    }
    

}

