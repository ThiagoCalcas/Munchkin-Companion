//
//  ViewController2.swift
//  MunchkinCompanion
//
//  Created by Thiago on 5/19/16.
//  Copyright © 2016 Thiago. All rights reserved.
//

import UIKit

var name1: String = "Player 1"
var name2: String = "Player 2"
var name3: String = "Player 3"
var name4: String = "Player 4"
var name5: String = "Player 5"

class ViewController2: UIViewController, UITextFieldDelegate  {

    @IBOutlet weak var labelPlayer1: UILabel!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var labelPlayer3: UILabel!
    @IBOutlet weak var labelPlayer4: UILabel!
    @IBOutlet weak var labelPlayer5: UILabel!
    @IBOutlet weak var textPlayer1: UITextField!
    @IBOutlet weak var textPlayer2: UITextField!
    @IBOutlet weak var textPlayer3: UITextField!
    @IBOutlet weak var textPlayer4: UITextField!
    @IBOutlet weak var textPlayer5: UITextField!
    @IBOutlet weak var secondPageScrollView: UIScrollView!
    @IBOutlet var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPlayer1.hidden = false
        textPlayer1.hidden = false
        textPlayer1.text = ""
        labelPlayer2.hidden = false
        textPlayer2.hidden = false
        textPlayer2.text = ""
        labelPlayer3.hidden = false
        textPlayer3.hidden = false
        textPlayer3.text = ""
        labelPlayer4.hidden = false
        textPlayer4.hidden = false
        textPlayer4.text = ""
        labelPlayer5.hidden = false
        textPlayer5.hidden = false
        textPlayer5.text = ""
        
        if (numOfPlayers < 5) {
            labelPlayer5.hidden = true
            textPlayer5.hidden = true
        }
        if (numOfPlayers < 4) {
            labelPlayer4.hidden = true
            textPlayer4.hidden = true
        }
        if (numOfPlayers < 3) {
            labelPlayer3.hidden = true
            textPlayer3.hidden = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

    func textFieldDidEndEditing(textField: UITextField) {
        if (textField == textPlayer1) {
            secondPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        }
        if (textField == textPlayer2) {
            secondPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        }
        if (textField == textPlayer3) {
            secondPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        }
        if (textField == textPlayer4) {
            secondPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        }
        if (textField == textPlayer5) {
            secondPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        }
    }

    @IBAction func funcStartButton(sender: AnyObject) {
        
        if (self.textPlayer1.text != "") {
            name1 = self.textPlayer1.text!
        } else {
            name1 = ""
        }
        if (self.textPlayer2.text != "") {
            name2 = self.textPlayer2.text!
        } else {
            name2 = ""
        }
        if (self.textPlayer3.text != "") {
            name3 = self.textPlayer3.text!
        } else {
            name3 = ""
        }
        if (self.textPlayer4.text != "") {
            name4 = self.textPlayer4.text!
        } else {
            name4 = ""
        }
        if (self.textPlayer5.text != "") {
            name5 = self.textPlayer5.text!
        } else {
            name5 = ""
        }
    }
    
    
}
