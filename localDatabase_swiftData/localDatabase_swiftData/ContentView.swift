//
//  ContentView.swift
//  localDatabase_swiftData
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI
import SwiftData
struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var users:[dataItem]
    @State var name="j bcj"
    var body: some View {
        
        VStack{
            TextField("",text:$name)
            Button {
                
                addItem(name:name)
                
            } label: {
                Text("Add Item")
            }
            
            List{
                ForEach(users){
                    
                        item in
                    HStack{
                        
                        Text(item.name)
                        
                        Button(action:{
                            item.name="new name is pencil"
                        } , label:{Image(systemName: "pencil")} )
                    
                    }
                            .swipeActions(edge: .trailing){
                                Button("Delete"){
                                    modelContext.delete(item)
                                }.foregroundColor(.red )
                        
                    }
                }
        }
        }
        }
    func addItem(name:String){
        modelContext.insert(dataItem(name:name))
    }
        
    }


#Preview {
    ContentView()
}
