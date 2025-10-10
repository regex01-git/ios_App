//
//  languageDetail.swift
//  datalist
//
//  Created by MacBook on 03/10/25.
//

import SwiftUI

struct languageDetail: View {
    var title:String
    var Subtitle:String
    var image:String
    var body: some View {
        VStack{
            AsyncImage(url:URL(string: image)){image in switch image {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable().frame(width: 100,height: 100)
            case .failure(_):
                Image(systemName: "photo").resizable().frame(width: 100,height: 100).foregroundColor(.gray)
            }
                
            }
            Text(title).font(.headline)
            Text(Subtitle).font(.subheadline)
        }
    }
}
// WE PASS DATA IN PREVIEW FOR TESTING PURPOSES IN IN ACTION IT PASS DIRECTLY FROM OUTSIDE
#Preview {
    languageDetail(title:"fardeen",Subtitle: "khan",image: "https://developer.apple.com/assets/elements/icons/swift/swift-64x64_2x.png")
}
