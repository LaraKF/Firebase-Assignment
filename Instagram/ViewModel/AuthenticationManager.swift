//
//  AuthenticationManager.swift
//  Instagram
//
//  Created by Lara K on 17/11/1444 AH.
//

import Foundation
import FirebaseAuth

struct AuthDataResultViewModel {
    let uid: String
    let email: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        
    }
}
    
   final class AuthenticationManager {
        
        static let shared = AuthenticationManager()
        private init() {}
        
        func createUser(email: String, password: String) async throws -> AuthDataResultViewModel {
            let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
            return AuthDataResultViewModel(user: authDataResult.user)
    }
}
