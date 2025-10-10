

import SwiftUI

struct WebViewScreen: View {
    @Binding var show: Bool   // Controls dismissal

    var body: some View {
        ZStack(alignment: .topTrailing) {
            webView(urlstring: "https://www.google.com")
                .ignoresSafeArea()

            // ✅ Close button
            Button(action: {
                show = false
            }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .background(Color.black)
    }
}

#Preview {
    WebViewScreen(show: .constant(true))
}
