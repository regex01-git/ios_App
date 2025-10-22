import SwiftUI
import FirebaseAuth

// MARK: - LoginView
struct LoginView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var email = ""
    @State private var password = ""
    
    @FocusState private var focusedField: Field?
    
    enum Field {
        case email, password
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Spacer().frame(height: 50)
                    
                    Text("Welcome to ValetGo")
                        .font(.largeTitle)
                        .bold()
                    
                    // MARK: Email Field
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .focused($focusedField, equals: .email)
                        .submitLabel(.next)
                        .onSubmit {
                            focusedField = .password
                        }
                        .padding(.horizontal)
                    
                    // MARK: Password Field
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .focused($focusedField, equals: .password)
                        .submitLabel(.go)
                        .onSubmit {
                            login()
                        }
                        .padding(.horizontal)
                    
                    // MARK: Login Button
                    Button(action: {
                        login()
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(12)
                            .padding(.horizontal)
                    }
                    
                    // MARK: Error Message
                    if !authViewModel.errorMessage.isEmpty {
                        Text(authViewModel.errorMessage)
                            .foregroundColor(.red)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                }
                .padding(.vertical)
            }
            .navigationBarHidden(true)
            .background(Color(UIColor.systemBackground))
            .ignoresSafeArea(.keyboard) // Prevents layout conflicts when keyboard appears
        }
    }
    
    private func login() {
        authViewModel.login(email: email, password: password)
    }
}

// MARK: - Preview
#Preview {
    LoginView()
        .environmentObject(AuthViewModel())
}
