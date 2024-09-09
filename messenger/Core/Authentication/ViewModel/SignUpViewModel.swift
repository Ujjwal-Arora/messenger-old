//
//  SignUpViewModel.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import Foundation

class SignUpViewModel : ObservableObject {
    @Published var currentUser = AuthService.shared.currentUser
    @Published var email = ""
    @Published var password = ""
    
    init() {
        currentUser = AuthService.shared.currentUser
        print("2SignIn = \(currentUser?.email ?? "no user found")")
    }
    
    func signUp() async throws {
        try await AuthService.shared.signUpFunc(email: email, password: password)
        print("3SignIn = \(currentUser?.email ?? "no user found")")

    }
    

}
