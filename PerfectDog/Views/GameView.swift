//
//  GameView.swift
//  PerfectDog
//
//  Created by Jong Hwan Seo on 2022-11-25.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var quizManagerVM: QuizManagerVM
    var body: some View {
        if (quizManagerVM.model.quizCompleted) {
            Text("Sup")
            DogContentView(DogApi: Api())
        } else {
            QuestionView(QuizManagerVM: quizManagerVM)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static let quizManagerVM = QuizManagerVM()
    static var previews: some View {
        GameView(quizManagerVM: quizManagerVM)
    }
}
