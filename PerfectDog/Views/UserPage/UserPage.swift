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
    @Binding var userIsLoggedIn: Bool
    init(isUserLoggedIn: Binding<Bool>) {
        coloredNavAppearance.backgroundColor = .perfectDog
            coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        self._userIsLoggedIn = isUserLoggedIn
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
                            if user == nil {
                                self.userIsLoggedIn.toggle()
                            }
                        }
                    }
            }
        
        }
    }
    func logOut() {
        do {
            try Auth.auth().signOut()
            self.userIsLoggedIn = false
            print("Attempting logout")
            print("\(userIsLoggedIn)")
        } catch  {
            print("Already logged out")
        }
    }
}


// Perhaps this Color extension can go elsewhere


struct UserPage_Previews: PreviewProvider {
    @State static var isUserCurrentlyLoggedIn = false
    static var previews: some View {
        UserPage(isUserLoggedIn: $isUserCurrentlyLoggedIn)
    }
}
