//
//  ContentView.swift
//  login_signup_firebase
//
//  Created by MacBook on 06/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Click Me"){
                print("clicked me")
            }.buttonStyle(customButtonStyle())
            Button("Click me 2"){print("click me 2")}.buttonStyle(customButtonStyle(color:.black,font:.yellow))
            NavigationLink{
            
            }label: {
                HStack{
                    Text("Dont know your password?")
                    Text("Forgot Password?").foregroundColor(.blue)
                }
            }
        }
    }
    struct customButtonStyle:ButtonStyle{
        var color:Color = .blue
        var font:Color = .white
        func makeBody(configuration: Configuration) -> some View {
            configuration.label.frame(maxWidth:.infinity,maxHeight: 50).background(color).foregroundColor(font)
                .cornerRadius(19)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
