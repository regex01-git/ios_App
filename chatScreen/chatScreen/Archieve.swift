//
//  Archieve.swift
//  chatScreen
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

struct Archieve: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .bottom){
                ScrollView{
                    VStack{
                        Spacer(minLength: 50)
                        HStack{
                            Spacer()
                            Spacer()
                            Text("Archieved").bold()
                            Spacer()
                            NavigationLink(destination: addContact())
                            {
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: contacts()){
                                Image(systemName: "person.circle")
                            }
                        }.padding().font(.title)
                        
                        VStack{
                            ForEach(0..<16){ _ in
                                HStack{
                                    Image("Avatar").resizable().frame(width: 70, height: 70)
                                    VStack(alignment: .leading){
                                        Text("John Doe").font(.headline)
                                        Text("Hi, I am John Doe 😊").font(.caption)
                                    }
                                    Spacer()
                                }.padding().background(Color.gray.opacity(0.1)).cornerRadius(14)
                            }
                        }.padding()
                    }.background(Color.white)
                }.ignoresSafeArea()
                
                HStack{
//                    Spacer()
                    option(icon: "house", title: "Home")
                    Spacer()
                    option(icon: "message.fill", title: "Chat")
                    Spacer()
                    option(icon: "creditcard.fill", title: "Payment",isActive: true)
                    Spacer()
                    option(icon: "phone.fill", title: "Calls")
//                    Spacer()
                }.padding(.horizontal,25).padding(.vertical,14).background(Color.white)
                
            }
        }
    }
    struct option :View{
        var icon: String
        var title: String
        var isActive: Bool = false
        var body : some View{
            VStack(spacing: 4){
                Image(systemName: icon).font(.system(size: 22)).foregroundColor(isActive ? .blue : .gray)
                Text(title).font(.caption).foregroundColor(isActive ? .blue : .gray)
            }
        }
    }
}

#Preview {
    Archieve()
}
