//
//  LogoImage.swift
//  PerfectDog
//
//  Created by Alex Wong on 2022-10-29.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image("logo-no-background")
            .resizable()
            .frame(width: 300, height: 200.0)
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
