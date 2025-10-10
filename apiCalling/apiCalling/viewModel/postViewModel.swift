//
//  postViewModel.swift
//  apiCalling
//
//  Created by MacBook on 06/10/25.
//

import Foundation
import UIKit
class PostViewModel:ObservableObject {
   @Published var arrPost:[PostModel]=[]
    func fetchData(){
        guard  let url=URL(string:"https://fakestoreapi.com/products")else{
            print("Invalid url")
            return
        }
        URLSession.shared.dataTask(with: URLRequest(url:url)){
            (data,resp,error) in
            if error==nil{
                if let data=data{
                    do{
                        let postdata=try JSONDecoder().decode([PostModel].self,from: data)
                        DispatchQueue.main.async{
                            self.arrPost.append(contentsOf:postdata)
                        }
                        
//                        for val in postdata{
//                            print(val)
//                        }
                    }catch{
                        print("failed to load jsondecoder\(error)")
                    }
                }
            }
        }.resume()
    }
}

