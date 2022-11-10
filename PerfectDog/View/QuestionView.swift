//
//  QuestionView.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import SwiftUI


class QuestionIndex: ObservableObject {
    @Published var index:Int = 0
}



struct QuestionView: View {
    
    @ObservedObject var currIndex : QuestionIndex
    
    @StateObject var dogQuestions = DogQuestions()
    
    
    
    //    @StateObject var questionManager = NextQuestionManager()
    //    @EnvironmentObject var questionManagerEnv = NextQuestionManager()
    
    //    @State var currIndex = 0
    //    var dogQuestionsLenght: Int = dogQuestions.DogQuestionsArr.count
    //    var currentQuestionIndex = 0
    
    //    var dogQuestionsLength: Int = DogQuestionsArr.count
    //    @StateObject var currentQuestionIndex = 0
    
    var body: some View {
        VStack(spacing:40){
            HStack{
                Text("Doggo Questions")
                Spacer()
                Text("1 out of \(dogQuestions.DogQuestionsArr.count)")
            }
            
            
            ProgressBar(progress: 90)
            
            VStack(alignment: .leading, spacing: 20){
                //                Text("What is your activity level ?")
                //                    .bold()
                
                Text("\(dogQuestions.DogQuestionsArr[self.currIndex.index])")
                    .font(.title)
                
                
                
                let sublist = dogQuestions.DogAnswerArr[self.currIndex.index]
                
                ForEach(sublist.indices, id: \.self){i in
                    AnswerRow(answer: Answer(text: "\(sublist[i])"))
                }
                

//                Text("\(dogQuestions.DogAnswerArr[self.currIndex.index][0])")
//                Text("\(dogQuestions.DogAnswerArr[self.currIndex.index][1])")
                
//                ForEach(dogQuestions.DogAnswerArr.indices, id: \.self) { i in
//
//                    let sublist = dogQuestions.DogAnswerArr[i]
//                    VStack {
//                        List(sublist.indices, id: \.self) { j in
//                            Text("\(sublist[j])")
//                        }
//                    }
//                }
                
                
                //                ForEach(dogQuestions.DogAnswerArr[self.currIndex.index].indices, id:\.self) {i in
                //                    let sublist = dogQuestions.DogAnswerArr
                //                    ForEach(sublist[i]){
                //                        Text("\(sublist[self.currIndex.index])")
                //                    }
                //                }
                
                
                //                                    VStack {
                //                                        List(sublist.indices, id: \.self) { j in
                //                                            Text("item = \(sublist[j])")
                //                                        }
                //                                    }
                
                
                
                //                for item in dogQuestions.DogAnswerArr{
                //
                //                }
                //                ForEach(dogQuestions.DogAnswerArr, id:\.self){item in Text("\(dogQuestions.DogAnswerArr[item])")
                //                }
                
                //                ForEach(dogQuestions.DogAnswerArr.indices) {
                //                    Text(dogQuestions.DogAnswerArr[$0])
                //                }
                
                
                //                Text("\(dogQuestions.DogAnswerArr[0][0])")
                //                Text("\(dogQuestions.DogAnswerArr[0][1])")
                //                Text("\(dogQuestions.DogAnswerArr[0][2])")
                
                //                dogQuestions.DogAnswerArr.
                //                ForEach(dogQuestions.DogAnswerArr){ item in
                //
                //                }
                //                Text("\(dogQuestions.DogAnswerArr[0])")
                //                AnswerRow(answer: Answer(text: dogQuestions.DogAnswerArr[0]))
                
                
                
                //                AnswerRow(answer: Answer(text: "Lazy af"))
                //                AnswerRow(answer: Answer(text: "im ight"))
                //                AnswerRow(answer: Answer(text: "i enjoy sunny walks"))
                //                AnswerRow(answer: Answer(text: "HYPE"))
            }
            
            
            
            PrimaryButton(text: "Next Doggo Question")
                .onTapGesture {
                    self.currIndex.index += 1
                    print("The current index is: \(self.currIndex)")
                }
            
            
            Spacer()//push eveything to the top of the view
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.perfectDog)
        //        .navigationBarHidden(true)
    }
}



struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(currIndex: QuestionIndex())
    }
}
