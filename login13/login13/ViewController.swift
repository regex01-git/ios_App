//
//  ViewController.swift
//  login13
//
//  Created by MacBook on 25/09/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var second: UIButton!
    
    @IBOutlet weak var first: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        first.layer.borderWidth=1
        first.layer.cornerRadius=10
        second.layer.borderWidth=1
        second.layer.cornerRadius=10
    }


}

