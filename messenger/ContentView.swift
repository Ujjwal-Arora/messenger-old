//
//  ContentView.swift
//  messenger
//
//  Created by Ujjwal Arora on 09/09/24.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
  //  @State private var email = ""
    var currentUser = Auth.auth().currentUser
    init(){
        print(currentUser?.email ?? "no user")
    }

    var body: some View {
        VStack {
            TextField("email", text: $email)
            TextField("password", text: $password)
            Button("signIn") {
                Task{
                   try await signInFunc()
                }
            }
            Button("logIn") {
                Task{
                   try await logInFunc()
                }
            }
            Button("signout") {
                Task{
                    signOutFunc()
                }
            }

        }
        .padding()
    }
    func signInFunc() async throws {
        do {
            try await Auth.auth().createUser(withEmail: email, password: password)
            print("signIn done")
            print(currentUser?.email ?? "no user")
        }catch{
            print(error.localizedDescription)
        }
    }
    func logInFunc() async throws {
        do{
            try await Auth.auth().signIn(withEmail: email, password: password)
            print("login done")
            print(currentUser?.email ?? "no user")
        }catch{
            print(error.localizedDescription)
        }
    }
    func signOutFunc() {
        do{
            try Auth.auth().signOut()
            print("signOUT done")
            print(currentUser?.email ?? "no user")

        }catch{
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
