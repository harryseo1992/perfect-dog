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

    @EnvironmentObject private var session: SessionStore
    var body: some View {
        VStack {
            NavigationView {
                    TabView {
                        PerfectDogTabViewItem()
                        PastHistoryTabViewItem()
                    }
                    .navigationTitle("Hello, User!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: { self.session.signOut() }) {
                                Text("Log Out")
                                    .frame(width: 100, height:40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.linearGradient(colors: [.orange], startPoint: .top, endPoint: .bottomTrailing))
                                    )
                                    .foregroundColor(.white)
                                    .offset(y: 50)
                        }
                    }
                    }
            }
            .navigationBarHidden(true)
        
        }
    }
}


// Perhaps this Color extension can go elsewhere


struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage()
    }
}
