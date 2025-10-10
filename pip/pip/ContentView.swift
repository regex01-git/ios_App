import SwiftUI
struct ContentView:View{
    @State private var offset:CGSize = CGSize(width: 100, height: 100)
    var body: some View{
//
        LazyVGrid(columns:[GridItem(.adaptive(minimum: <#CGFloat#>)), GridItem(.adaptive(minimum: <#CGFloat#>)),GridItem(.adaptive(minimum: <#CGFloat#>))],spacing: 10){
            HStack{
                ForEach(0..<3){_ in 
                    Rectangle().frame(width: 100,height:100).padding(10)
                }
                              
            }
        }
       

    }
}
#Preview {
    ContentView()
}
