//
//  QuestionView.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing:40){
            HStack{
                Text("Doggo Questions")
                Spacer()
                Text("1 out of 10")
            }
            
            
            ProgressBar(progress: 90)
            
            VStack(alignment: .leading, spacing: 20){
                Text("What is your activity level ?")
                    .bold()
                
                AnswerRow(answer: Answer(text: "Lazy af"))
                AnswerRow(answer: Answer(text: "im ight"))
                AnswerRow(answer: Answer(text: "i enjoy sunny walks"))
                AnswerRow(answer: Answer(text: "HYPE"))
            }
            
            
 
            PrimaryButton(text: "Next Doggo Question")
            
            Spacer()//push eveything to the top of the view 
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.perfectDog)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
