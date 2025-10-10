//
//  SwiftUIView.swift
//  swift3
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct SwiftUIView: View {
    @EnvironmentObject var first:Observable
    var body: some View {
        if first.isOn{
            Text("Hello, World!2")
        }
        
    }
}

#Preview {
    SwiftUIView().environmentObject(Observable())
}
