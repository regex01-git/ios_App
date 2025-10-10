////
////  ContentView.swift
////  apiCalling
////
////  Created by MacBook on 06/10/25.
////
//
//import SwiftUI
//
//struct ContentView: View {
////     var text: String = ""
//    var body: some View {
//        
//        Text("Hello world")
//            
//    }
//        .onAppear{
//        print("Appear")
//    }
//    .onDisappear{
//        print("Disappear")
//    }
////    .onChange(of: text ){
////        newText in
////        print("text change \(newText)")
////    }
//}
//
//#Preview {
//    ContentView()
//}


import SwiftUI
//struct ContentView: View {
//    @StateObject var object=PostViewModel()
//    var body: some View {
//        NavigationView{
//            List(object.arrPost){
//                
//                    item in
//                NavigationLink(destination:Text(item.title)){
////                    HStack{
////                        ProductCard(item:item)
////                    }
//                    let columns = [
//                        GridItem(.flexible(), spacing: 19),
//                        GridItem(.flexible(), spacing: 16)
//                    ]
//
//                    ScrollView {
//                        LazyVGrid(columns: columns, spacing: 16) {
//                            ForEach(object.arrPost) { item in
//                                ProductCard(item: item)
//                            }
//                        }
//                        .padding()
//                    }
//
//                }.navigationBarTitle(Text("Students Post"))
//            }
//        }
//        
//        
//            .onAppear{
//                object.fetchData()
//            }
//        
//    }
//}
import SwiftUI

struct ContentView: View {
    @StateObject var object = PostViewModel()

    // Calculate card width dynamically to fit two cards per row with spacing and padding
    private var cardWidth: CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let horizontalPadding: CGFloat = 32   // 16 padding on each side
        let interItemSpacing: CGFloat = 16    // spacing between cards
        return (screenWidth - horizontalPadding - interItemSpacing) / 2
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.fixed(cardWidth), spacing: 16),
                    GridItem(.fixed(cardWidth), spacing: 16)
                ], spacing: 16) {
                    ForEach(object.arrPost) { item in
                        NavigationLink(destination: Text(item.description)){
                            ProductCard(item: item)
                                .frame(width: cardWidth)  // FIXED width here
                        }
                    }
                }
                .padding(.horizontal, 16)   // Padding for grid edges
                .padding(.top)
            }
            .navigationTitle("Products")
            .onAppear {
                object.fetchData()
            }
        }
    }
}

#Preview {
    ContentView()
}
