//
//  SwiftUIView.swift
//  chatScreen
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill") // 👈 icon
                .foregroundColor(.gray)

            TextField("Enter your name", text: .constant("")) // 👈 placeholder
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)

    }
}

#Preview {
    SwiftUIView()
}
