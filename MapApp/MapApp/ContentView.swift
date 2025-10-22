import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        if authViewModel.isSignedIn {
            MapView().environmentObject(authViewModel)
        } else {
            LoginView().environmentObject(authViewModel)
        }
    }
}
