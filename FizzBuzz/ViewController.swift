//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Mikel Balduciel on 23/8/16.
//  Copyright © 2016 Mikel Balduciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func play(move: String) {
         gameScore = 1
    }


}

