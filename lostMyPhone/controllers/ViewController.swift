//
//  ViewController.swift
//  lostMyPhone
//
//  Created by marvin evins on 5/11/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var roundButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundButton.layer.cornerRadius = 20.0
        roundButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }


}

