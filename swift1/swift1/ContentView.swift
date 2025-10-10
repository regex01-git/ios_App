//
//  ContentView.swift
//  swift1
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var field=""
    @State var arr:[lists]=[lists(name:"first1"),lists(name:"second2"),lists(name:"third")]
    var body: some View {
        VStack{
            List(arr){
                i in Text(i.name).listRowSeparator(.visible).swipeActions(edge:.trailing){
                    Button(action:{
                        arr.removeAll(where: {$0.id==i.id})
                    },label:{Text("Delete")})
                }
            } .frame(maxHeight: CGFloat(arr.count) * 60)
            TextField("",text:$field)
       
            Button("add item"){
                arr.append(lists(name:field))
                field=""
            }
            .disabled(field.isEmpty)
            
        }
    }
// private func deleteItem(_ item:lists){
//        arr.removeAll(where: { $0.id == item.id })
//    }
}
struct lists:Identifiable{
    var id=UUID()
    var name:String
}

#Preview{
    ContentView()
}
