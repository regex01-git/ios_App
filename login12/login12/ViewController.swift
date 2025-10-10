//
//  ViewController.swift
//  login12
//
//  Created by MacBook on 25/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label1.layer.borderWidth=2
        label1.layer.borderColor=UIColor.blue.cgColor
        label1.layer.cornerRadius=10
        label4.layer.borderWidth=2
        label4.layer.borderColor=UIColor.blue.cgColor
        label4.layer.cornerRadius=10
        label2.layer.borderWidth=2
        label2.layer.borderColor=UIColor.blue.cgColor
        label2.layer.cornerRadius=10
        label3.layer.borderWidth=2
        label3.layer.borderColor=UIColor.blue.cgColor
        label3.layer.cornerRadius=10
    }


}

