//
//  second.swift
//  loginpractice
//
//  Created by MacBook on 29/09/25.
//

import UIKit

class second: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true,completion: nil)
    }
    let secondVC = second()
    secondVC.username = "Hello"
    self.navigationController?.pushViewController(secondVC, animated: true)

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
