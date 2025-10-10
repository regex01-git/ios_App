//
//  ViewController.swift
//  calculator2
//
//  Created by MacBook on 29/09/25.
//
//AGR KOI OPTIONAL VALUE HAI ? toh jab wo use krenge toh wo end hogi ! sai
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ansstr: UILabel!
    @IBOutlet weak var ans: UILabel!
    var dumy:String=""
    var first:Double?
    var second:Double?
    var operation:String?
    var userInput:String=""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func addUserInput(input:String){
        if userInput.contains(".")&&input=="."{
            return
        }
        if userInput.count>9{
            return
        }
        userInput.append(input)
        dumy.append(input)
        showUserInput()
    }
    func showUserInput(){
        ansstr.text=dumy
    }
    @IBAction func one(){
        addUserInput(input: "1")
      
    }
    @IBAction func two(){
        addUserInput(input: "2")
    }
    @IBAction func three(){
        addUserInput(input: "3")
    }
    @IBAction func four(){
        addUserInput(input: "4")
    }
    @IBAction func five(){
        addUserInput(input: "5")
    }
    @IBAction func six(){
        addUserInput(input: "6")
    }
    @IBAction func seven(){
        addUserInput(input: "7")
    }
    @IBAction func eight(){
        addUserInput(input: "8")
    }
    @IBAction func nine(){
        addUserInput(input: "9")
    }

    @IBAction func decimal(_ sender: Any) {
        addUserInput(input: ".")
    }
    @IBAction func reset(_ sender: Any) {
        dumy=""
         first=0
        second=0
       operation=""
       userInput=""
        ans.text=""
        ansstr.text=""
    }
    
    @IBAction func oneback(_ sender: Any) {
        if (self.userInput.count>0)
        {
            userInput.removeLast()
            showUserInput( )
        }
    }
    @IBAction func modulas(_ sender: Any) {
        operation="%"
        perform(oper: operation!)
    }
    @IBAction func divide(_ sender: Any) {
        operation="/"
        perform(oper: operation!)
    }
    @IBAction func multiply(_ sender: Any) {
        operation="*"
        perform(oper: operation!)
    }
    @IBAction func plus(_ sender: Any) {
        operation="+"
        perform(oper: operation!)
    }
    @IBAction func subtract(_ sender: Any) {
        operation="-"
        perform(oper:operation!)
    }
    func perform(oper:String){
        
        if dumy.contains(operation!)
        {
            return
        }
        first=Double(userInput)
        addUserInput(input: oper)
        
        self.userInput=""
        
    }
    @IBAction func equal(_ sender: Any) {
        if operation=="+"{
            ans.text="\(first!+Double(userInput)!)"
        }else if operation=="-"{
            ans.text="\(first!-Double(userInput)!)"
        }else if operation=="*"{
            ans.text="\(first!*Double(userInput)!)"
        }else if operation=="/"{
            ans.text="\(first!/Double(userInput)!)"
        }else if operation=="%"{
            var fir:Int=Int(first!)
            var sec=Int(userInput)
            ans.text="\(fir%sec!)"
        }
        dumy=ans.text!
        userInput=dumy
        showUserInput()
        
    }
}

