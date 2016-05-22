//
//  PasswordViewController.swift
//  GroupLock
//
//  Created by Sergej Jaskiewicz on 05.04.16.
//  Copyright © 2016 Lanit-Tercom School. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: UI elements
    @IBOutlet var enterPasswordLabel: UILabel!
    @IBOutlet var initialPasswordTextField: UITextField!
    @IBOutlet var proceedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        
        initialPasswordTextField.delegate = self
        initialPasswordTextField.becomeFirstResponder()
    }
    
    // MARK: Event handling
    @IBAction func onProceedButton() {
        initialPasswordTextField.resignFirstResponder()
        // password check
        performSegueWithIdentifier("toMainScreen", sender: nil)
    }
    
    @IBAction func textFieldOnChange(sender: UITextField) {
        if sender.text?.characters.count != 0 {
            proceedButton.hidden = false
        } else {
            proceedButton.hidden = true
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        onProceedButton()
        return true
    }
    
}