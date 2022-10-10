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
    @State private var userIsLoggedIn = false
    
    // toggling views
    var body: some View {
        if userIsLoggedIn{
            content
        } else {
            content
        }
    }
    
    var content: some View {
        VStack {
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
            // button needs to go back to register menu
            Button(action: {}){
                Text("Dont have an account Sign up")
                .frame(width: 300, height:40)
                .offset(y: 110)
                .foregroundColor(.orange)
            }
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
        .padding()
    }
    

    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
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

