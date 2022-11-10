//
//  Trivia.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import Foundation

//var DogQuestionsArr = [
//    "How active are you?",
//    "Do you like big dogs?",
//    "How much money are you willing to spend?"
//]




class DogQuestions: ObservableObject {
    
//    let questionDictionary = [
//        "How active are you?": [
//            "How active are you?",
//            "How much money are you willing to spend?",
//            "Do you like big dogs?"],
//        
//        "How much money are you willing to spend?": [
//            "0-100",
//            "100-300",
//            "500-1000"],
//        
//        "How much money are you willing to spend?": [
//            "0-100",
//            "100-300",
//            "500-1000"],
//        
//    ]
    
    
    
    var DogQuestionsArr = [
        "How active are you?",
        "How much money are you willing to spend?",
        "Do you like big dogs?"

    ]

    var DogAnswerArr = [
        ["Not Active", "Moderate", "Active"],
        ["0-100", "100-300", "500-1000"],
        ["Yes", "No"]
    ]
}
