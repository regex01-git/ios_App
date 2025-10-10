//
//  addContact.swift
//  chatScreen
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

struct addContact: View {
    var body: some View {
        
            ZStack(alignment: .bottom){
                ScrollView{
                    VStack{
                    HStack{
                        Spacer()
                        Text("Create Contact").font(.title).bold()
                        Spacer()
                        Button("Save"){
                            
                        }.padding().foregroundStyle(Color.white).background(Color.blue).cornerRadius(15)
                    }.padding()
                    VStack{
                        field(icon:"house", placeholder: "Enter your name")
                        field(icon:"phone",placeholder: "Enter your company name")
                        field(icon:"house",placeholder: "Enter your phone number")
                        field(icon:"house",placeholder: "Enter label")
                        field(icon:"house",placeholder: "Enter your email address")
                        field(icon:"house",placeholder: "Enter label")
                        field(icon:"house",placeholder: "Enter significant date")
                        field(icon:"house",placeholder: "Enter your date of birth")
                        
                    }.padding()
                    Button("Save"){
                        
                    }.frame(width: 350, height: 50).background(Color.blue).foregroundStyle(Color.white).cornerRadius(18)
                    
                    
                }
                    
                }
               
            
        }.background(Color.gray.opacity(0.2))
    }
}
struct field: View {
    var icon:String
    var placeholder:String
    var body: some View {
        HStack(spacing:13){
            Image(systemName:icon).foregroundColor(.gray).frame(width: 10,height:20)
            TextField(placeholder,text: .constant("")).padding().background(Color.white).cornerRadius(10).padding(.bottom,13)
        }
    }
}

#Preview {
    addContact()
}
