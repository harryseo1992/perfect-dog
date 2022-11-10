//
//  ContentView.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-09-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            VStack(spacing: 40){
                
                //title
                VStack(spacing:20){
                    Text("Perfect Dog")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text("Are you ready to find your PerfectDog?")
                        .foregroundColor(Color.white)
                    
                    
                }
                
                NavigationLink{
                    NextView()
                } label:{
                    PrimaryButton(text: "Test")
                }
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            .background(Color.yellow)
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
