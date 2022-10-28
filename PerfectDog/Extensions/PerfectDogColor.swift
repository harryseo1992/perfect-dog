//
//  PerfectDogColor.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-10-28.
//

import SwiftUI

public extension Color {
    static let oldPrimaryColor = Color(UIColor.systemOrange)
    static let perfectDog = Color("PerfectDog")
}

public extension UIColor {
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
