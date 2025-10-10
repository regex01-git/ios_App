//
//  ContentView.swift
//  datalist
//
//  Created by MacBook on 03/10/25.
//
import SwiftUI

struct ContentView: View {
    let items: [Item]
    
    var body: some View {
        NavigationView{
            List(items){
                item in
                languageCell(item:item)
                
            }
        }
        
    }
}



#Preview {
    ContentView(items:sampleData)
}

struct languageCell: View {
    var item:Item
    var body: some View {
        NavigationLink( destination: languageDetail(title: item.title, Subtitle:item.subtitle, image: item.imageURL)) {
            
            
            AsyncImage(url:URL(string:item.imageURL)){
                image in switch image{
                case .empty:
                    ProgressView().frame(width: 50,height: 50)
                case .success(let image):
                    image.resizable()
                        .frame(width: 50,height: 50)
                    
                case .failure:
                    Image(systemName: "photo").resizable().frame(width: 50, height: 50).foregroundColor(.gray)
                    
                    
                }
            }.padding(.trailing,4)
            VStack(alignment: .leading){
                Text(item.title).font(.headline)
                Text(item.subtitle).font(.subheadline).foregroundStyle(.gray)
            }
            
        }.navigationBarTitle("Programming Languages")
    }
}
