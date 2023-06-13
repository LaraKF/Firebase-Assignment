//
//  ContentView.swift
//  Instagram
//
//  Created by Lara K on 16/11/1444 AH.
//

import SwiftUI

@MainActor
final class LogIn: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func logIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found.")
            return
        }
        
        Task {
            do {
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
            } catch {
                print("Error: \(error)")
                
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = LogIn()

    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                VStack {
                    
                    VStack {
                        
                        Image("Instagram-logo")
                            .resizable()
                            .frame(width: 200, height: 80)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        TextField("Phone number, username or email", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 45)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(0.5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                        
                        
                        SecureField("Passwort", text: $viewModel.password)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 45)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(0.5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                        
                    }
                    .padding()
                    
                    NavigationLink("Forgot password?", destination: {
                    })
                    
                    
                    .padding(.leading, 190)
                    
                    Button("Log In") {
                        viewModel.logIn()
                        
                    }

                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 45)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .onTapGesture {
                    }
                    .autocapitalization(.none)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(/*@START_MENU_TOKEN@*/.top, 10.0/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Text("Don't have an account?")
                        
                        NavigationLink("Sign Up.", 
                        destination: SignUp()
                        )
                            .navigationBarHidden(true)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

