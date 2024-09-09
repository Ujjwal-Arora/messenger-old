//
//  LogInView.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import SwiftUI

struct LogInView: View {
    @StateObject var vm = LogInViewModel()
    var body: some View {
        VStack {
            TextField("email", text: $vm.email)
            TextField("password", text: $vm.password)
            Button("logIn") {
                Task{
                    try await vm.logIn()
                    print("4LogIn = \(vm.currentUser?.email ?? "no user found")")
                }
            }
            NavigationLink(destination: SignUpView()) {
                Text("create acc")
            }
        }
        .padding()
    }
}

#Preview {
    LogInView()
}
