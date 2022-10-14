//
//  PerfectDogTabViewItem.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-10-10.
//

import SwiftUI

struct PerfectDogTabViewItem: View {
    var body: some View {
        VStack {
            Image("PerfectDog")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.top, 50)
            Text("Perfect Doggo")
            Spacer()
            Button(action: {}) {
                Text("Choose your perfect doggo")
                    .fontWeight(.medium)
                    .padding(8.0)
            }
                .foregroundColor(.black)
                .frame(maxWidth:.infinity)
                .background(Color.perfectDog)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.perfectDog, lineWidth: 1)
                )
                .padding([.leading, .trailing, .bottom])
        }.tabItem {
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
