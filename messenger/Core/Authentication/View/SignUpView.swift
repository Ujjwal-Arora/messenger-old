//
//  SignUpView.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var vm = SignUpViewModel()
    var body: some View {
        VStack {
            TextField("email", text: $vm.email)
            TextField("password", text: $vm.password)
            Button("SignUp") {
                Task{
                    try await vm.signUp()
                    print("4SignIn = \(vm.currentUser?.email ?? "no user found")")
                }
            }
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
