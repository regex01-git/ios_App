//
//  GoogleService.swift
//  ValetApp
//
//  Created by MacBook on 22/10/25.
//


import FirebaseAuth

class FirebaseService {
    static let shared = FirebaseService()
    
    private init() {}
    
    func signIn(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
            } else if let user = result?.user {
                completion(.success(user))
            }
        }
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
}
