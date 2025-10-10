//
//  ContentView.swift
//  cardGame
//
//  Created by MacBook on 01/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var first="card4"
    @State var second="card3"
    @State var Player=0
    @State var Cpu=0
    func deal(){
        let a=Int.random(in: 2...14)
        let b=Int.random(in: 2...14)
        first="card"+String(a)
        second="card"+String(b)
        if(a>b){
            Player+=1;
        }
        else if(b>a){
            Cpu+=1;
        }
    }
    var body: some View {
        ZStack{
            
            Image("background-plain").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(first)
                    Spacer()
                    Image(second)
                    Spacer()
                }
                Spacer()
                Button(action:{
                    deal()
                },label:{
                    Image("logo")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom,10)
                        Text("\(Player)").font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom,10)
                        Text("\(Cpu)").font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
