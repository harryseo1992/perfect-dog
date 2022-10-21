//
//  DogTab.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-10-20.
//

import SwiftUI

struct DogTab: View {
    
    let systemSymbol: String
    let tabNameText: String
    
    var body: some View {
        HStack{
            Image(systemName: systemSymbol)
            Text(tabNameText)
        }.font(.title)
    }
}

struct DogTab_Previews: PreviewProvider {
    static var previews: some View {
        DogTab(systemSymbol: "gear", tabNameText: "Question 1")
    }
}
