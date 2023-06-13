//
//  SignUp.swift
//  Instagram
//
//  Created by Lara K on 17/11/1444 AH.
//

import SwiftUI

struct SignUp: View {
    @State var mobileOrEmail = ""
    @State var fullName = ""
    @State var username = ""
    @State var password = ""
    @State private var isPresented = false
    @State private var text1: String = ""
    @State private var text2: String = ""
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .center) {
                Spacer()
                
                VStack {
                    Image("Instagram-logo")
                        .resizable()
                        .frame(width: 200, height: 80)
                    
                    Text("Sign up to see photos and videos \nfrom your friends.")
                        .fontWeight(.heavy)
                        .foregroundColor(.black.opacity(0.7))
                        .multilineTextAlignment(.center)
                    
                }
                .padding(.top, 100.0)
                
                
                ZStack {
                    Button ("Log in with Facebook") {
                    }
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 45)
                    .background(Color.blue.opacity(0.8))
                    .cornerRadius(8)
                    Image(systemName: "f.square.fill")
                    
                        .foregroundColor(Color.white)
                        .padding(.trailing, 190.0)
                    
                }
                
                .padding()
                //
                
                Text("OR")
                    .foregroundColor(Color.gray)
                
                VStack {
                    TextField("Mobile Number or Email", text: $mobileOrEmail)
                        .keyboardType(.emailAddress)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                    TextField("Full Name", text: $fullName)
                        .keyboardType(.emailAddress)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                    TextField("Username", text: $username)
                        .keyboardType(.emailAddress)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                    
                    SecureField("Passwort", text: $password)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                    SecureField("Confirm Passwort", text: $password)
                    //, text: //$loginVM.credentials.password)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(0.5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                    
                }
                .padding()
                
                Button {
                } label: {
                    Text("Sign up")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 45)
                        .background(Color.blue.opacity(0.8))
                        .cornerRadius(8)
                }
                .padding()
                
                Spacer()
                
                VStack {
                    
                    Button {
                    } label: {
                        Text("By signing up, you agree to our Terms, Data Policy and Cookies Policy.")
                            .foregroundColor(.black.opacity(0.7))
                            .padding()
                        
                        
                    }
                    HStack {
                        Text("Have an account?")
                        Button {
                            isPresented.toggle()
                        } label: {
                            Text("Log in")
                        }
                        .fullScreenCover(isPresented: $isPresented) {
                            ContentView()
                        }
                    }
                    .padding(.bottom, 80.0)
                    
                }
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
