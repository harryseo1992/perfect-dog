//
//  SessionStore.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-04.
//

import SwiftUI
import Firebase
import Combine

class SessionStore: ObservableObject {
    @Published var session: User?
    var handle: AuthStateDidChangeListenerHandle?
    
    func listen() {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                // if we have a user, create a new user model
                print("got user: \(user)")
                self.session = User(uid: user.uid, displayName: user.displayName, email: user.email)
            } else {
                // we aint got no user
                self.session = nil
            }
        }
    }
    
    func signUp(
        email: String,
        password: String
//        handler: @escaping (AuthDataResult?, Error?) -> Void
    ) {
        Auth.auth().createUser(withEmail: email, password: password)
    }
    
    func signIn(
        email: String,
        password: String
//        handler: @escaping (AuthDataResult?, Error?) -> Void
        ) {
        Auth.auth().signIn(withEmail: email, password: password)
    }

    func signOut () -> Bool {
        do {
            try Auth.auth().signOut()
            self.session = nil
            return true
        } catch {
            return false
        }
    }
    
    func unbind () {
            if let handle = handle {
                Auth.auth().removeStateDidChangeListener(handle)
            }
        }
}
