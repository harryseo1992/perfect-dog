//
//  PerfectDogTabViewItem.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-10-31.
//

import SwiftUI

struct PerfectDogTabViewItem: View {
    @State private var isShowingGameView = false
    var body: some View {
        ZStack {
            Color.perfectDog
                .ignoresSafeArea()
            VStack {
                    LogoImage()
                        .offset(y: -50)
                        .padding([.top, .bottom], 100)
                    NavigationLink(destination: PlayContentView(), isActive: $isShowingGameView) {
                        Button(action: {
                            isShowingGameView = true
                        }) {
                            Text("Choose your perfect doggo")
                                .fontWeight(.medium)
                                .padding()
                                .background(Color.perfectDog)
                                .cornerRadius(8)
                                .foregroundColor(.black)
                        }
                        .padding([.leading, .trailing, .bottom])
                    }
                }
                .padding()
                .background(
                    .white
                )
                .cornerRadius(20)
        }
        .tabItem {
            Image(systemName: "gamecontroller.fill")
            Text("Play Perfect Dog")
        }.tag(1)
    }
}

struct PerfectDogTabViewItem_Previews: PreviewProvider {
    static var previews: some View {
        PerfectDogTabViewItem()
    }
}
