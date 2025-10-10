//
//  secondViewController.swift
//  ToDoApp
//
//  Created by MacBook on 26/09/25.
//

import UIKit
protocol addingTaskDetail{
    func addingTask(newTask:Task)
    func addingCancelTask()
}

class secondViewController: UIViewController {
    var delegate: addingTaskDetail?

    @IBOutlet weak var inputfield: UITextField!
    //    @IBOutlet weak var switchCh: UISwitch!
//    @IBOutlet weak var inputfield: UITextField!

    @IBOutlet weak var switchCh: UISwitch!
    @IBOutlet weak var Currentdate: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cancel(_ sender: Any) {
        delegate?.addingCancelTask()
        dismiss(animated: true)
    }

    @IBAction func save(_ sender: Any) {
        if let text = inputfield.text, !text.isEmpty {
            delegate?.addingTask(newTask: Task(
                name: text,
                isUrgent: switchCh.isOn,
                dateCreated: Currentdate.date
            ))
            dismiss(animated: true)
        }else{
            let alert=UIAlertController(title: "Missing information", message: "You should fill the data first", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default))
            present(alert, animated: true)  
        }
    }
}
