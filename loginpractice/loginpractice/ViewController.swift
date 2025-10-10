//
//  ViewController.swift
//  loginpractice
//
//  Created by MacBook on 29/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let destVC = segue.destination as! second
            destVC.username = "Amit Sharma"
        }
    }



}

