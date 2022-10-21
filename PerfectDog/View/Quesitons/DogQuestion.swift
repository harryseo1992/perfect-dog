//
//  DogQuestion.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-10-20.
//

import SwiftUI



struct DogQuestion: View {
    
    
    let questionArr: [String]
    let handlerTxt: String
    let symbolImg: String
    

    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: DogTab(systemSymbol: symbolImg, tabNameText: handlerTxt))
                {
                    ForEach(questionArr, id: \.self, content: {
                        question in
                        NavigationLink(question, destination:DogDetail(dogQuestion: question))
                    })
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}




struct DogQuestion_Previews: PreviewProvider {
    static var previews: some View {
//         DogQuestion(questionArr: ["1", "2", "3", "4" , "5"], handlerTxt:
//                         "How active are you?", symbolImg: "car")
        
                DogQuestion(questionArr: ["Never", "Sometimes", "Usually", "Most of the time" , "Always"], handlerTxt:
                        "How often do you walk?", symbolImg: "car")
    }
}
