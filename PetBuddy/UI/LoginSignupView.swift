//
//  LoginSignupView.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 16/08/2024.
//

import SwiftUI
import Combine

enum AuthState {
    case signUp
    case signIn
}

struct LoginSignupView: View {
    
    @State var authState: AuthState = .signUp
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    @State private var validationError = false
    @State private var requestError = false
    @State private var requestErrorText: String = ""
    @State var networkOperation: AnyCancellable?
    
    var body: some View {
        VStack(spacing: 55) {
            AppTitle()
            
            let columns: [GridItem] = [
                GridItem(.flexible(), spacing: 8, alignment: .leading),
                GridItem(.flexible())
            ]
            
            LazyVGrid(columns: columns) {
                Text("Username")
                TextField("Username", text: $username)
                    .textContentType(.username)
                    .autocapitalization(.none)
                if authState == .signUp {
                    Text("Email")
                    TextField("Email", text: $email)
                        .textContentType(.emailAddress)
                }
                Text("Password")
                SecureField("Password", text: $password)
                    .textContentType(.password)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $validationError) {
                if authState == .signUp {
                    return Alert(title: Text("Please complete the username, email and the passowrd fields"))
                } else {
                    return Alert(title: Text("Please complete the username, email and the passowrd fields"))
                }
            }
            
            VStack(spacing: 8) {
                Button(action: {
                    doAuth()
                }) {
                    HStack {
                        Spacer()
                        Text(authState == .signUp ? "Sign Up" : "Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding([.top, .bottom], 10)
                .background(Color.green.opacity(0.2))
                .clipShape(Capsule())
                .alert(isPresented: $requestError) {
                    Alert(title: Text(requestErrorText))
                }
                
                Button(action: {
                    withAnimation { toggleState() }
                }) {
                    HStack {
                        Spacer()
                        Text(authState == .signUp ? "Sign In" : "Sign Up")
                        Spacer()
                    }
                }
                .padding([.top, .bottom], 10)
                .overlay(Capsule().stroke(Color.green, lineWidth: 2))

            }
            .padding(.horizontal, 50)
            .accentColor(.green)
            
            Spacer()
                .frame(minHeight: 0, maxHeight: 100)
        }
        .padding(.horizontal)
    }
    
    private func toggleState() {
        if authState == .signUp {
            authState = .signIn
        } else {
            authState = .signUp
        }
    }
    
    private func doAuth() {
        
    }
    
    private func doSignIn() {
        
    }
    
    private func doSignUp() {
        
    }
    
    private func handleResult(_ result: Subscribers.Completion<Error>) {
        
    }
}

struct LoginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSignupView()
    }
}
