import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var isSignedIn = false
    @Published var errorMessage: String = ""
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self?.errorMessage = error.localizedDescription
                    self?.isSignedIn = false
                } else {
                    self?.isSignedIn = true
                }
            }
        }
    }
    
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            isSignedIn = false
        } catch {
            errorMessage = "Failed to sign out"
        }
    }
}
