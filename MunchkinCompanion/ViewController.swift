//
//  ViewController.swift
//  MunchkinCompanion
//
//  Created by Thiago on 5/12/16.
//  Copyright © 2016 Thiago. All rights reserved.
//

import UIKit

var numOfPlayers : Int = 2;

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var numPlayersTextField: UITextField!
    @IBOutlet var firstPageScrollView: UIScrollView!
    @IBOutlet var goButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        
        if (textField == numPlayersTextField) {
            firstPageScrollView.setContentOffset(CGPointMake(0, 250), animated: true)
    
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        firstPageScrollView.setContentOffset(CGPointMake(0, 0), animated: true)
        numOfPlayers = Int(self.numPlayersTextField.text!)!
        print (numOfPlayers)
    }

    @IBAction func funcGoButton(sender: AnyObject) {
        
        if (self.numPlayersTextField.text == "") {
            numOfPlayers = 2
        } else {
            numOfPlayers = Int(self.numPlayersTextField.text!)!
        }
    }
}


