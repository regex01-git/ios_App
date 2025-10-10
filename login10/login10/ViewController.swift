//
//  ViewController.swift
//  login10
//
//  Created by MacBook on 24/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sign: UIButton!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var submit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        submit.layer.cornerRadius=10
        facebook.layer.borderWidth=3
        facebook.layer.cornerRadius=10
        
        
    }

    @IBAction func signup(_ sender: Any) {
        sign.setTitleColor(.white, for: .normal)
    }
    
}

