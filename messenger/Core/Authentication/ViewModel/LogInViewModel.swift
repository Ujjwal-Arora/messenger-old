//
//  LogInViewModel.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import Foundation

class LogInViewModel : ObservableObject {
    @Published var currentUser = AuthService.shared.currentUser
    @Published var email = ""
    @Published var password = ""
    
    init() {
        currentUser = AuthService.shared.currentUser
        print("2LogIn = \(currentUser?.email ?? "no user found")")
    }
    
    func logIn() async throws {
        try await AuthService.shared.logInFunc(email: email, password: password)
        print("3LogIn = \(currentUser?.email ?? "no user found")")

    }
    

}
