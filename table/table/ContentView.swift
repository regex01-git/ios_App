import SwiftUI

struct ContentView: View {
    var data: [Item]

    var body: some View {
        VStack {
            List(data) { item in
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(data: sampleData)
}
