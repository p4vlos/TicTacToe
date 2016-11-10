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
   
    var combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var playerTurn = 1
    var btnPressed1 = [Int]()
    var btnPressed2 = [Int]()
    var counter = 0
    var winner = 1
    var i = 0
    var j = 0
    
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
        
        //i = 0
        counter = 0
        
    }
    
    @IBAction func btnPressed(sender: UIButton) {
        
        
        
        if playerTurn == 1 && counter < 9 {
            sender.setTitle("X", for: .normal)
            sender.isEnabled = false
            btnPressed1.append(sender.tag)
            playerPlayed()
            counter += 1
        } else if playerTurn == 2 && counter < 9 {
            sender.setTitle("O", for: .normal)
            sender.isEnabled = false
            btnPressed2.append(sender.tag)
            playerPlayed()
            counter += 1
        }
        
        
        
        
    }
    
    func winnerCalc() {
        
        for i in 0...7 {
            
            print("Pavlos: i = \(i)")
            print("Pavlos: counter = \(counter)")
            if btnPressed1 == combinations[i] && counter <= 5 {
            //if combinations[i].contains(btnPressed1[j]) && counter <= 5 {
                winner = 1
                let alertDlg = UIAlertController(title: "The winner", message: "The winner is Player \(winner)", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertDlg.addAction(okBtn)
                
                self.present(alertDlg, animated: true, completion: nil)
             } else if btnPressed2 == combinations[i] && counter <= 5 {
            //} else if combinations[i].contains(btnPressed2[j]) && counter <= 5 {
                winner = 2
                let alertDlg = UIAlertController(title: "The winner", message: "The winner is Player \(winner)", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertDlg.addAction(okBtn)
                
                self.present(alertDlg, animated: true, completion: nil)
            } else if counter > 9{
                let alertDlg = UIAlertController(title: "No winner", message: "Tie", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertDlg.addAction(okBtn)
                
                self.present(alertDlg, animated: true, completion: nil)
            }
        
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
        winnerCalc()
    }
}



