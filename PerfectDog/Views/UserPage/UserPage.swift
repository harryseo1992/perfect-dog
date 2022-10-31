//
//  UserPage.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-10-31.
//

import SwiftUI
import Firebase

let coloredNavAppearance = UINavigationBarAppearance()

struct UserPage: View {
    @State var userIsLoggedIn: Bool
    init(userIsLoggedIn: Bool) {
        coloredNavAppearance.backgroundColor = .perfectDog
            coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        self.userIsLoggedIn = userIsLoggedIn
        }
    var body: some View {
        VStack {
            NavigationView {
                    TabView {
                        PerfectDogTabViewItem()
                        PastHistoryTabViewItem()
                    }.navigationTitle("Hello, User!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: { logOut() }) {
                                Text("Log Out")
                                    .frame(width: 100, height:40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.orange], startPoint: .top, endPoint: .bottomTrailing))
                                    )
                                    .foregroundColor(.white)
                                    .offset(y: 25)
                        }
                    }
                    }.accentColor(Color.perfectDog)
                    .onAppear {
                        Auth.auth().addStateDidChangeListener {
                            (auth, user) in
                            if user != nil {
                                userIsLoggedIn.toggle()
                            }
                        }
                    }
            }
        
        }
    }
    func logOut() {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}


// Perhaps this Color extension can go elsewhere


struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage(userIsLoggedIn: false)
    }
}
