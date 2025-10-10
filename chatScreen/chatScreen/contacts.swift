//
//  contacts.swift
//  chatScreen
//
//  Created by MacBook on 10/10/25.
//

import SwiftUI

struct contacts: View {
    var body: some View {
        ScrollView{
            
            VStack(){
                Spacer(minLength: 60)
                Text("New Message").font(.title).fontWeight(.bold)
                TextField("Type a name here...",text: .constant(""))
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                HStack{
                    VStack(alignment: .leading){
                        
                        Button(action:{},label:{
                            HStack{
                                Image(systemName: "person.3.sequence.fill")
                                Text("Create Group")
                            }
                        }).padding()
                        Button(action:{},label:{
                            HStack{
                                Image(systemName: "person.fill")
                                Text("Create Contact")
                            }
                        }).padding()
                        
                    }.foregroundStyle(Color.black).fontWeight(.bold).font(.title)
                    Spacer()
                }
                HStack{
                    Text("Suggested").font(.title3).fontWeight(.bold)
                    Spacer()
                }
                VStack{
                    ForEach(0..<15){ _ in
                        HStack{
                            Image("Avatar").frame(width: 50, height: 70)
                            VStack(alignment: .leading){
                                Text("James Rodrigz").font(.headline).bold()
                                Text("100 mutual friends").foregroundStyle(Color.gray)
                            }
                            Spacer()
                            Image(systemName: "plus").bold().foregroundColor(.blue)
                        }
                    }
                }
                Spacer()
            }.padding(.all,20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray.opacity(0.2))
            
        }.ignoresSafeArea()
    }
}

#Preview {
    contacts()
}
