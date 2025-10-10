//
//  forgetUiview.swift
//  someRevision
//
//  Created by MacBook on 07/10/25.
//

import SwiftUI

struct forgetUiview: View {
    var body: some View {
        VStack{
            
            
            Button("Click me!"){
            }.buttonStyle(customButton(color:.blue,fon:.white))
            
            Button("Click me!"){
            }.buttonStyle(customButton(color:.red,fon:.orange))
            Button("push me!"){
                
            }.frame(width: 100,height: 100).tint(.yellow)
        }
    }
    struct customButton:ButtonStyle{
        var color:Color = .red
        var fon:Color = .blue
        func makeBody(configuration: Configuration) -> some View {
            configuration.label.foregroundColor(fon).frame(width: 160,height: 170).background(Capsule().fill(color))
        }
    }
}

#Preview {
    forgetUiview()
}
