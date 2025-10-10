//
//  ViewController.swift
//  stack
//
//  Created by MacBook on 26/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        containerView.layer.cornerRadius = 10
           containerView.layer.shadowColor = UIColor.black.cgColor
           containerView.layer.shadowOpacity = 0.25
           containerView.layer.shadowOffset = CGSize(width: 0, height: 2)
           containerView.layer.shadowRadius = 4
           containerView.layer.masksToBounds = false
    }


}

