import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn = false
    @Published var errorMessage: String = ""
    
    func login(email: String, password: String) {
        FirebaseService.shared.signIn(email: email, password: password) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(_):
                    self.isLoggedIn = true
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
    func logout() {
        do {
            try FirebaseService.shared.signOut()
            isLoggedIn = false
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
