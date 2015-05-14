//
//  ViewController.swift
//  Postcard
//
//  Created by Darin R Brockman on 5/5/15.
//  Copyright (c) 2015 Darin R Brockman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fromLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //display message text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.blueColor()
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        
        //hide keyboard after pressed
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // show From and name text
        fromLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        //hide keyboard after pressed
        enterMessageTextField.resignFirstResponder()
    }


}

// git update test for commits