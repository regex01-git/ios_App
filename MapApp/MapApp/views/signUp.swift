//import FirebaseAuth
//class create{
//    func signUpUser(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
//        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            
//            if let user = authResult?.user {
//                completion(.success(user))
//            }
//        }
//    }
//}
