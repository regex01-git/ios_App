//
//  ContentView.swift
//  chatScreen
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    
                    HStack{
                        Text("Chat").font(.title).fontWeight(.medium)
                        
                        Spacer()
                        
                        HStack{
                            NavigationLink(destination:contacts()){
                                Image(systemName: "person.circle")
                                    .font(.title2)
                            }
                            NavigationLink(destination:addContact()){
                                Image(systemName:"plus").font(.title2)
                            }
                        }
                        
                    }.padding(.top,50)
                        .padding()
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.bottom,0)
                    
                        .background(Color.gray.opacity(0.2))
                    TextField("Search...", text: .constant(""))
                    
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.trailing,10)
                        .padding(.leading,10)
                    NavigationLink(destination: Archieve()){
                        HStack{
                            Image(systemName: "tray.and.arrow.down")
                            Text("Archive")
                            Spacer()
                        }.foregroundStyle(.black).padding(.leading,20).padding(.top,10)
                    }
                    
                        
                  
                    ForEach(0..<7){_ in
                        HStack{
                            Image("Avatar").resizable().frame(width: 80,height: 80).scaledToFit()
                            VStack(alignment: .leading){
                                Text("Jenny").font(.system(size: 19)).fontWeight(.semibold)
                                Text("I mean he wrecked it! 😊")
                            }.padding(.leading,5)
                            Spacer()
                            VStack(alignment: .trailing){
                                Image(systemName: "bell.slash")
                                Text("12:34 PM")
                            }.padding().foregroundStyle(Color.gray)
                        }.padding()
                        //                    Spacer(minLength: 80)
                    }
                    Spacer(minLength: 10)
                }
            }.ignoresSafeArea()
            VStack{
                HStack {
                    navButton(icon: "house", title: "Home")
                    Spacer()
                    navButton(icon: "message.fill", title: "Chat", isActive: true)
                    Spacer()
                    navButton(icon: "creditcard.fill", title: "Payment")
                    Spacer()
                    navButton(icon: "phone.fill", title: "Calls")
                }
                .padding(.horizontal, 25)
                .padding(.vertical, 10)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 3, y: -2)
                
                
            }
        }
        
    }
}
        
    

struct navButton: View {
    var icon: String
    var title: String
    var isActive: Bool = false
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 22))
                .foregroundColor(isActive ? .blue : .gray)
            Text(title)
                .font(.caption)
                .foregroundColor(isActive ? .blue : .gray)
        }
    }
}

#Preview {
    ContentView()
}
