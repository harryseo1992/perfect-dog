//
//  UserPage.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-09-25.
//

import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()

struct UserPage: View {
    init() {
//            coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = .perfectDog
            coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                   
            UINavigationBar.appearance().standardAppearance = coloredNavAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance

        }
    var body: some View {
        VStack {
            NavigationView {
                TabView {
                    PerfectDogTabViewItem()
                    PastHistoryTabViewItem()
                }.navigationTitle("Hello, User!")
                    .accentColor(Color.perfectDog)
            }
        }
    }
}


// Perhaps this Color extension can go elsewhere


struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage()
    }
}
