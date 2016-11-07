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
        btn1.setTitle("", for: <#T##UIControlState#>)
        btn2.setTitle("", for: <#T##UIControlState#>)
        btn3.setTitle("", for: <#T##UIControlState#>)
        btn4.setTitle("", for: <#T##UIControlState#>)
        btn5.setTitle("", for: <#T##UIControlState#>)
        btn6.setTitle("", for: <#T##UIControlState#>)
        btn7.setTitle("", for: <#T##UIControlState#>)
        btn8.setTitle("", for: <#T##UIControlState#>)
        btn9.setTitle("", for: <#T##UIControlState#>)

        //update turn label
        playerTurn = 1
        turnLabel.text = "It is Player's \(playerTurn) turn!"
        
        
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
    
    @IBAction func ticTacToebtn(_ sender: Any) {
        
    }

}

