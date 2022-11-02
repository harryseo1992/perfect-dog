//
//  PrimaryButton.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import SwiftUI

struct PrimaryButton: View {
    
    var text:String
    var background: Color = Color.white
    
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
        
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
