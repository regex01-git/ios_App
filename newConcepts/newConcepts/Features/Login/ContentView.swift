//
//  ContentView.swift
//  newConcepts
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

import SwiftUI

struct ContentView:View{
    @StateObject var person = LoginModelView()
    var body :some View{
        VStack{
            Text("Login Page").font(.largeTitle).fontWeight(.heavy)
            
            TextField("Email",text: $person.Email).padding(10)
            SecureField("Password",text:$person.Password)
            if person.isError.count>0{
                Text(person.isError).foregroundColor(.red)
            }
            Button("Login"){
                person.login()
            }.foregroundStyle(Color.black).frame(width:300, height: 50).background(Color.blue).cornerRadius(20).padding(.top,20)
        }.padding(20)
            .alert("You Logged in",isPresented: $person.isLoggedIn){
                Button("Ok",role: .cancel){
                    
                }
            }
    }
}
#Preview {
    ContentView()
}
