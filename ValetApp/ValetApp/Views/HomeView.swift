import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("Welcome to the Home Page!")
                .font(.largeTitle)
                .padding()

            Button("Log Out") {
                authViewModel.logout()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(8)
        }
    }
}
