//
//  LoginView.swift
//  PerfectDog
//
//  Created by Alex Wong on 2022-10-10.
//

import SwiftUI
import Firebase


struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var userIsLoggedIn = false
    @State private var shouldShowLoginAlert: Bool = false
    // toggling views
    var body: some View {
        if (self.userIsLoggedIn) {
            UserPage(isUserLoggedIn: $userIsLoggedIn)
        } else {
            content
        }
    }
    
    var content: some View {
        NavigationView {
            VStack {
                LogoImage()
                    .offset(y:-50)
                TextField("Email", text: $email)
                    .textFieldStyle(.plain)
                Rectangle()
                    .frame(width: 300, height: 1)
                    .foregroundColor(.orange)

                SecureField("Password", text: $password)
                    .textFieldStyle(.plain)
                Rectangle()
                    .frame(width: 300, height: 1)
                    .foregroundColor(.orange)
                
                Button(action: { login() }) {
                    Text("Login")
                        .frame(width: 300, height:40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors: [.orange], startPoint: .top, endPoint: .bottomTrailing))
                        )
                        .foregroundColor(.white)
                        .offset(y: 25)
                }
                NavigationLink(destination: RegisterView()) {
                    Text("Dont have an account Sign up")
                        .frame(width: 300, height: 40)
                        .offset(y: 70)
                        .foregroundColor(.orange)
                }
                // button needs to go back to register menu
//                Button(action: {}){
//                    Text("Dont have an account Sign up")
//                    .frame(width: 300, height:40)
//                    .offset(y: 110)
//                    .foregroundColor(.orange)
//                }
            }
            .frame(width: 300)
            .onAppear {
                Auth.auth().addStateDidChangeListener {
                    (auth, user) in
                    if user != nil {
                        userIsLoggedIn.toggle()
                    }
                }
            }
            .alert(isPresented: $shouldShowLoginAlert) {
                Alert(title: Text("Email/Password incorrect"))
            }
        .padding()
        }
        .navigationBarHidden(true)
    }
    

    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                self.shouldShowLoginAlert = true
                return
            } else {
                print("success")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

