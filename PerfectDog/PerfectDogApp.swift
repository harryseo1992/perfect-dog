//
//  PerfectDogApp.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-09-23.
//

import SwiftUI
import Firebase

@main
struct PerfectDogApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    static let session = SessionStore()
    
    var body: some Scene {
        WindowGroup {
//            UserProfile().environmentObject(PerfectDogApp.session)
//            DogContentView();
            PlayContentView();
        }
    }
}
