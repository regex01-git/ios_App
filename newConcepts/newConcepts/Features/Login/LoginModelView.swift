//
//  LoginModelView.swift
//  newConcepts
//
//  Created by MacBook on 10/10/25.
//

import Foundation
class LoginModelView:ObservableObject {
    @Published var Email : String = ""
    @Published var Password : String = ""
    @Published var isError : String = ""
    @Published var isLoading : Bool = false
    @Published var isLoggedIn : Bool = false
    func login(){
        if Email.isEmpty || Password.isEmpty{
            isError = "Please fill all fields"
            return
        }
       else  if !Email.contains("@"){
            isError = "Please enter valid email"
            return
        }
        else{
            isLoading = true
            isLoggedIn=true
        }
    }
}
