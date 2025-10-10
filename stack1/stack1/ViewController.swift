//
//  ViewController.swift
//  stack1
//
//  Created by MacBook on 26/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var password: UIButton!
    @IBOutlet weak var email: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        email.layer.cornerRadius = 10
        email.layer.borderWidth=1
        email.layer.borderColor=UIColor.white.cgColor
        password.layer.cornerRadius = 10
        password.layer.borderWidth=1
       password.layer.borderColor=UIColor.white.cgColor
        login.layer.cornerRadius = 10
    }


}

