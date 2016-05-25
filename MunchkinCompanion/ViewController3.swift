//
//  ViewController3.swift
//  MunchkinCompanion
//
//  Created by Thiago on 5/19/16.
//  Copyright © 2016 Thiago. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var levelPlayer1: UILabel!
    @IBOutlet weak var levelPlayer2: UILabel!
    @IBOutlet weak var levelPlayer3: UILabel!
    @IBOutlet weak var levelPlayer4: UILabel!
    @IBOutlet weak var levelPlayer5: UILabel!
    @IBOutlet weak var levelPlayer: UILabel!
    @IBOutlet weak var levelMonster: UILabel!
    @IBOutlet weak var minusPlayer1: UIButton!
    @IBOutlet weak var minusPlayer2: UIButton!
    @IBOutlet weak var minusPlayer3: UIButton!
    @IBOutlet weak var minusPlayer4: UIButton!
    @IBOutlet weak var minusPlayer5: UIButton!
    @IBOutlet weak var minusMonster: UIButton!
    @IBOutlet weak var minusPlayer: UIButton!
    @IBOutlet weak var plusPlayer1: UIButton!
    @IBOutlet weak var plusPlayer2: UIButton!
    @IBOutlet weak var plusPlayer3: UIButton!
    @IBOutlet weak var plusPlayer4: UIButton!
    @IBOutlet weak var plusPlayer5: UIButton!
    @IBOutlet weak var plusMonster: UIButton!
    @IBOutlet weak var plusPlayer: UIButton!
    @IBOutlet weak var buttonResetBattleCounter: UIButton!
    @IBOutlet weak var buttonFinishGame: UIButton!
    @IBOutlet weak var labelPlayer1: UILabel!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var labelPlayer3: UILabel!
    @IBOutlet weak var labelPlayer4: UILabel!
    @IBOutlet weak var labelPlayer5: UILabel!
    
    var lvlP1:Int = 1
    var lvlP2:Int = 1
    var lvlP3:Int = 1
    var lvlP4:Int = 1
    var lvlP5:Int = 1
    var lvlPlayer:Int = 0
    var lvlMonster:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        labelPlayer1.hidden = false
        levelPlayer1.hidden = false
        minusPlayer1.hidden = false
        plusPlayer1.hidden = false
        labelPlayer2.hidden = false
        levelPlayer2.hidden = false
        minusPlayer2.hidden = false
        plusPlayer2.hidden = false
        labelPlayer3.hidden = false
        levelPlayer3.hidden = false
        minusPlayer3.hidden = false
        plusPlayer3.hidden = false
        labelPlayer4.hidden = false
        levelPlayer4.hidden = false
        minusPlayer4.hidden = false
        plusPlayer4.hidden = false
        labelPlayer5.hidden = false
        levelPlayer5.hidden = false
        minusPlayer5.hidden = false
        plusPlayer5.hidden = false
        
        self.levelPlayer1.text = String(lvlP1)
        self.levelPlayer2.text = String(lvlP2)
        self.levelPlayer3.text = String(lvlP3)
        self.levelPlayer4.text = String(lvlP4)
        self.levelPlayer5.text = String(lvlP5)
        
        if (numOfPlayers < 5) {
            labelPlayer5.hidden = true
            levelPlayer5.hidden = true
            minusPlayer5.hidden = true
            plusPlayer5.hidden = true
        }
        if (numOfPlayers < 4) {
            labelPlayer4.hidden = true
            levelPlayer4.hidden = true
            minusPlayer4.hidden = true
            plusPlayer4.hidden = true
        }
        if (numOfPlayers < 3) {
            labelPlayer3.hidden = true
            levelPlayer3.hidden = true
            minusPlayer3.hidden = true
            plusPlayer3.hidden = true
        }
        
        
        if (name1 != "") {
            self.labelPlayer1.text = name1
        }
        if (name2 != "") {
            self.labelPlayer2.text = name2
        }
        if (name3 != "") {
            self.labelPlayer3.text = name3
        }
        if (name4 != "") {
            self.labelPlayer4.text = name4
        }
        if (name5 != "") {
            self.labelPlayer5.text = name5
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func funcMinusPlayer1(sender: AnyObject) {
        if (lvlP1 > 1) {
            lvlP1 = lvlP1 - 1
            self.levelPlayer1.text = String (lvlP1)
        }
    }

    @IBAction func funcPlusPlayer1(sender: AnyObject) {
        if (lvlP1 < 10) {
            lvlP1 = lvlP1 + 1
            self.levelPlayer1.text = String (lvlP1)
        }
    }

    @IBAction func funcMinusPlayer2(sender: AnyObject) {
        if (lvlP2 > 1) {
            lvlP2 = lvlP2 - 1
            self.levelPlayer2.text = String (lvlP2)
        }
    }
    
    @IBAction func funcPlusPlayer2(sender: AnyObject) {
        if (lvlP2 < 10) {
            lvlP2 = lvlP2 + 1
            self.levelPlayer2.text = String (lvlP2)
        }
    }
    
    @IBAction func funcMinusPlayer3(sender: AnyObject) {
        if (lvlP3 > 1) {
            lvlP3 = lvlP3 - 1
            self.levelPlayer3.text = String (lvlP3)
        }
    }
    
    @IBAction func funcPlusPlayer3(sender: AnyObject) {
        if (lvlP3 < 10) {
            lvlP3 = lvlP3 + 1
            self.levelPlayer3.text = String (lvlP3)
        }
    }
    
    @IBAction func funcMinusPlayer4(sender: AnyObject) {
        if (lvlP4 > 1) {
            lvlP4 = lvlP4 - 1
            self.levelPlayer4.text = String (lvlP4)
        }
    }
    
    @IBAction func funcPlusPlayer4(sender: AnyObject) {
        if (lvlP4 < 10) {
            lvlP4 = lvlP4 + 1
            self.levelPlayer4.text = String (lvlP4)
        }
    }
    
    @IBAction func funcMinusPlayer5(sender: AnyObject) {
        if (lvlP5 > 1) {
            lvlP5 = lvlP5 - 1
            self.levelPlayer5.text = String (lvlP5)
        }
    }
    
    @IBAction func funcPlusPlayer5(sender: AnyObject) {
        if (lvlP5 < 10) {
            lvlP5 = lvlP5 + 1
            self.levelPlayer5.text = String (lvlP5)
        }
    }
    
    @IBAction func funcMinusPlayer(sender: AnyObject) {
        if (lvlPlayer > 1) {
            lvlPlayer = lvlPlayer - 1
            self.levelPlayer.text = String (lvlPlayer)
        }
    }
    
    @IBAction func funcPlusPlayer(sender: AnyObject) {
        lvlPlayer = lvlPlayer + 1
        self.levelPlayer.text = String (lvlPlayer)
    }
    
    @IBAction func funcMinusMonster(sender: AnyObject) {
        if (lvlMonster > 1) {
            lvlMonster = lvlMonster - 1
            self.levelMonster.text = String (lvlMonster)
        }
    }
    
    @IBAction func funcPlusMonster(sender: AnyObject) {
        lvlMonster = lvlMonster + 1
        self.levelMonster.text = String (lvlMonster)
    }
    
    @IBAction func fundResetBattleCounter(sender: AnyObject) {
        lvlMonster = 1
        lvlPlayer = 1
        self.levelMonster.text = String (lvlMonster)
        self.levelPlayer.text = String (lvlPlayer)
    }
    
}
