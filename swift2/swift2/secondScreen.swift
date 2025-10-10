//
//  secondScreen.swift
//  swift2
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct secondScreen: View {
    @ObservedObject var first:Observable
    var body: some View {
        VStack{
            Text("Hello, second!")
            Text("First value is \(first.count)")
        }
    }
}

//#Preview {
//    secondScreen()
//}
