import SwiftUI
import WebKit
// UIViewRepresentable is a wrapper class between UIKIT view and swifUI
struct webView: UIViewRepresentable {
    
    var urlstring:String?
   
    func makeUIView(context: Context) ->WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url=URL(string: urlstring!){
            let request=URLRequest(url: url)
           uiView.load(request)
        }
    }
}
