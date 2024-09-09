//
//  AuthService.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    var currentUser = Auth.auth().currentUser
    
    static let shared = AuthService()
    
    func signUpFunc(email: String, password : String) async throws {
        do {
            try await Auth.auth().createUser(withEmail: email, password: password)
            print("signUp done")
            print("1SignIn = \(currentUser?.email ?? "no user found")")
        }catch{
            print(error.localizedDescription)
        }
    }
    func logInFunc(email: String, password : String) async throws {
        do{
            try await Auth.auth().signIn(withEmail: email, password: password)
            print("login done")
            print("1LogIn = \(currentUser?.email ?? "no user found")")
        }catch{
            print(error.localizedDescription)
        }
    }
    func signOutFunc() {
        do{
            try Auth.auth().signOut()
            print("signOUT done")
            print("1 = \(currentUser?.email ?? "")")

        }catch{
            print(error.localizedDescription)
        }
    }
}
