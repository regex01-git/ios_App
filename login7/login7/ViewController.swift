//
//  ViewController.swift
//  login7
//
//  Created by MacBook on 23/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var apple: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        facebook.layer.borderWidth = 1
        facebook.layer.borderColor = UIColor.black.cgColor
        facebook.layer.cornerRadius=10
        google.layer.borderWidth=1
        google.layer.borderColor=UIColor.black.cgColor
        google.layer.cornerRadius=10
        apple.layer.borderWidth=1
        apple.layer.borderColor=UIColor.black.cgColor
        apple.layer.cornerRadius=10
        google.layer.cornerRadius=10
    }

    @IBAction func nextclicked(_ sender: Any) {
        let alert = UIAlertController(title: "Form Submitted", message: "Email:\(email.text ?? "not having email") Password:\(pass.text ?? "not having password")", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
    }
    
}

