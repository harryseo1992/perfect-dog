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

extension Color {
    static let oldPrimaryColor = Color(UIColor.systemOrange)
    static let perfectDog = Color("PerfectDog")
}

extension UIColor {
    class var perfectDog: UIColor {
            let perfectDogColor = 0xF0AC00
            return UIColor.rgb(fromHex: perfectDogColor)
        }

        class func rgb(fromHex: Int) -> UIColor {

            let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
            let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
            let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
            let alpha = CGFloat(1.0)

            return UIColor(red: red, green: green, blue: blue, alpha: alpha)
        }
}

struct UserPage_Previews: PreviewProvider {
    static var previews: some View {
        UserPage()
    }
}
