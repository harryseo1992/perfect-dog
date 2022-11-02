//
//  ProgressBar.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import SwiftUI

struct ProgressBar: View {
    
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.325))
                .cornerRadius(10)
                
            Rectangle()
                .frame(width: progress, height:4)
                .foregroundColor(Color.cyan)
                .cornerRadius(10)
        }
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
