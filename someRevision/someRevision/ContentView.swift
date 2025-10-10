//
//  ContentView.swift
//  someRevision
//
//  Created by MacBook on 07/10/25.
//

import SwiftUI

struct ContentView: View {
    var ans:Bool=false
    var body: some View {
        ZStack{
            
            NavigationStack{
                NavigationLink{
                    forgetUiview()
                }label: {
                    
                    HStack{
                        Text("Forget your password?").frame(width:200, height: 50).background(Capsule().fill(Color.red).stroke(Color.yellow,lineWidth: 5))
                        Text("Click me?").foregroundStyle(
                            ans ? Color.yellow:Color.red)
                        .underline().font(.caption).fontWeight(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
