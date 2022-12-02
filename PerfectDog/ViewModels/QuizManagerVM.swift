//
//  QuizManagerVM.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-23.
//

import Foundation

class QuizManagerVM: ObservableObject {
    @Published private (set) var progress: CGFloat = 0
    static var currentIndex = 0
    
    var selectedAnswers: [String] = []
    
    static func createGameModel(i: Int) -> Quiz {
        return Quiz(currentQuestionIndex: i, quizModel: quizData[i], quizCompleted: false)
    }
    
    @Published var model = QuizManagerVM.createGameModel(i: QuizManagerVM.currentIndex)
    
    func saveAnswer() {
        for index in model.quizModel.optionsList.indices {
            model.quizModel.optionsList[index].isSelected = false
        }
//        if model.quizModel.optionsList.firstIndex(where: {$0.optionId == selectedOption.optionId}) != nil {
////            if selectedOption.optionId == model.quizModel. {
////                model.quizModel.optionsList[index].isSelected = true
////            }
//            selectedAnswers.append(selectedOption.option)
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                if (QuizManagerVM.currentIndex < 9) {
//                    QuizManagerVM.currentIndex = QuizManagerVM.currentIndex + 1
//                    self.model = QuizManagerVM.createGameModel(i: QuizManagerVM.currentIndex)
//                } else {
//                    self.model.quizCompleted = true
//                    self.model.perfectDogMatchStatus = true
//                }
//            }
//        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            if (QuizManagerVM.currentIndex < QuizManagerVM.quizData.count - 1 && !self.model.quizCompleted) {
                QuizManagerVM.currentIndex = QuizManagerVM.currentIndex + 1
                self.progress = CGFloat(Double(QuizManagerVM.currentIndex + 1) / Double(QuizManagerVM.quizData.count) * 350)
                self.model = QuizManagerVM.createGameModel(i: QuizManagerVM.currentIndex)
            } else {
                self.model.quizCompleted = true
                self.model.perfectDogMatchStatus = true
                QuizManagerVM.currentIndex = 0 // reset
                self.progress = 0 // reset
            }
        }
    }
}

extension QuizManagerVM
{
    static var quizData: [QuizModel] {
        [
            QuizModel(question: "How active are you?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Not Active"),
                                   QuizOption(id: 2, optionId: "B", option: "Moderate"),
                                    QuizOption(id: 3, optionId: "C", option: "Active")]),
            QuizModel(question: "How much money are you willing to spend?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "0-100"),
                                   QuizOption(id: 2, optionId: "B", option: "100-300"),
                                    QuizOption(id: 3, optionId: "C", option: "500-1000")]),
            QuizModel(question: "Do you like big dogs?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Yes"),
                                   QuizOption(id: 2, optionId: "B", option: "No")]),
            QuizModel(question: "Is your dog staying indoors or outdoors?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Indoors"),
                                   QuizOption(id: 2, optionId: "B", option: "Outdoors")]),
            QuizModel(question: "Would you prefer a calm or energetic dog?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Calm"),
                                   QuizOption(id: 2, optionId: "B", option: "Energetic")]),
            QuizModel(question: "Is shedding a problem?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Yes"),
                                   QuizOption(id: 2, optionId: "B", option: "No")]),
            QuizModel(question: "Do you want to compete with your dogs",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "Yes"),
                                   QuizOption(id: 2, optionId: "B", option: "No")]),
            QuizModel(question: "Are you new to owning a dog?",
                      optionsList: [QuizOption(id: 1, optionId: "A", option: "No this is my first dog"),
                                   QuizOption(id: 2, optionId: "B", option: "I am an expert")]),
        ]
    }
}
