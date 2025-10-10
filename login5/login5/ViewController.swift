//
//  ViewController.swift
//  login5
//
//  Created by MacBook on 23/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signin: UIButton!
   @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var button: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        password.layer.cornerRadius=20
        username.layer.cornerRadius=20
        signin.layer.cornerRadius=20
    }

    @IBAction func signinaction(_ sender: Any) {
        password.placeholder="fardeen"
    }
    
    @IBAction func signupaction(_ sender: Any) {
        password.placeholder="khan"
    }
}

