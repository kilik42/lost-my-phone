//
//  FormViewController.swift
//  lostMyPhone
//
//  Created by marvin evins on 5/16/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit
import MapKit

class FormViewController: UIViewController {

    @IBOutlet weak var phoneNum: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var yourName: UITextField!
    
    
    @IBOutlet weak var textInput: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yourName.delegate = self
        phoneNum.delegate = self
        email.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit(_ sender: Any) {
        
        textInput.text = "User Name: \(yourName.text!)\n phone \(phoneNum.text!) \n email: \(email.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneNum.resignFirstResponder()
    }


}

extension FormViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
