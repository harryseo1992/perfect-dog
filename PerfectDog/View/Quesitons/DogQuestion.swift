//
//  DogQuestion.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-10-20.
//

import SwiftUI



struct DogQuestion: View {
    
    
    let tasks: [String]
    let handlerTxt: String
    let symbolImg: String
    

    
    var body: some View {
        
        NavigationView {
            List {
                Section(header: DogTab(systemSymbol: symbolImg, tabNameText: handlerTxt))
                {
                    ForEach(tasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination:DogDetail(dogQuestion: taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}




struct DogQuestion_Previews: PreviewProvider {
    static var previews: some View {
        DogQuestion(tasks: ["1", "2", "3", "4" , "5"], handlerTxt:
                        "How active are you?", symbolImg: "car")
    }
}
