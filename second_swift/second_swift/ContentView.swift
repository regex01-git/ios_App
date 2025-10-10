//
//  ContentView.swift
//  second_swift
//
//  Created by MacBook on 01/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemMint).ignoresSafeArea()
            
            VStack(alignment: .leading,spacing: 15){
                Image("nature")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack{
                    Text("Nature love")
                        .font(.title)
                        .fontWeight(.heavy )
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                        }.font(.caption )
                        Text("4.5/5")
                    }.foregroundColor(.orange)
                }
                Text("come visit the mountains...")
                
                HStack{
                    Spacer()
                    Image(systemName: "binoculars.fill")
                    
                    Image(systemName: "fork.knife")
                }
            }
            .padding()
            
            //        .background(.blue)
            .background(Rectangle().foregroundColor(.white ).shadow(radius: 15).cornerRadius(15)).padding()
        }
    }
    
}

struct ContentView_Previews:PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
