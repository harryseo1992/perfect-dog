//
//  Quiz.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-23.
//

import Foundation
import SwiftUI

struct Quiz {
    var currentQuestionIndex: Int
    var quizModel: QuizModel
    var quizCompleted: Bool
    var perfectDogMatchStatus: Bool = false
}

struct QuizModel {
    var question: String
//    var answer: String
    var optionsList: [QuizOption]
}

struct QuizOption: Identifiable {
    var id: Int
    var optionId: String
    var option: String
//    var color: Color
    var isSelected: Bool = false
}

