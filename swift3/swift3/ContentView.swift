//
//  ContentView.swift
//  swift3
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var first:Observable
    var body: some View {
    VStack{
           if first.isOn{
              Text("on")
         }else{
              Text("off")
            }
        SwiftUIView()
       Button("change"){first.isOn.toggle()
           
          }
       }
   }
}

#Preview {
    ContentView().environmentObject(Observable())
}
