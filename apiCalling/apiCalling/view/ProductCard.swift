//
//  ProductCard.swift
//  apiCalling
//
//  Created by MacBook on 06/10/25.
//

import SwiftUI

//struct ProductCard: View {
//    var item:PostModel
//    var body: some View {
//            VStack(alignment: .leading) {
//                AsyncImage(url: URL(string: item.image)) { phase in
//                    if let image = phase.image {
//                        image
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 100)
//                            .cornerRadius(8)
//                    } else if phase.error != nil {
//                        Color.red.frame(height: 100) // Error placeholder
//                    } else {
//                        Color.gray.frame(height: 100) // Loading placeholder
//                    }
//                }
//                
//                Text(item.title)
//                    .font(.caption)
//                    .lineLimit(2)
//                
//                Text("$\(item.price, specifier: "%.2f")")
//                    .font(.caption2)
//                    .foregroundColor(.green)
//            }
//            .padding(8)
//            .background(Color(.systemBackground))
//            .cornerRadius(10)
//            .shadow(radius: 2)
//        }
//}

struct ProductCard: View {
    var item: PostModel

    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: item.image)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .cornerRadius(8)
                } else if phase.error != nil {
                    Color.red.frame(height: 100)
                } else {
                    Color.gray.frame(height: 100)
                }
            }

            Text(item.title)
                .font(.caption)
                .lineLimit(2)
                .padding(.top, 4)

            Text("$\(item.price, specifier: "%.2f")")
                .font(.caption2)
                .foregroundColor(.green)
                .padding(.top, 2)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 2)
        // NO frame width here
    }
}


#Preview {
    ProductCard(item: PostModel(
        id: 1,
        price: 109.95,
        title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        
        description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
        image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png",
        rating: Rating(rate: 3.9, count: 120),
        category: "men's clothing",
        
    ))
}
