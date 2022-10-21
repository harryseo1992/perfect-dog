//
//  DogDetail.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-10-20.
//

import SwiftUI

struct DogDetail: View {
    
    let dogQuestion:String
    var body: some View {
        
        VStack{
            Text(dogQuestion)
        }

    }
}

struct DogDetail_Previews: PreviewProvider {
    static var previews: some View {
        DogDetail(dogQuestion: "How active are you?")
    }
}
