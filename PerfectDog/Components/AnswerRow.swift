//
//  AnswerRow.swift
//  PerfectDog
//
//  Created by Timmy Lau on 2022-11-01.
//

import SwiftUI

struct AnswerRow: View {
    
    var answer: Answer
    
//    will know if the user selected THAT specific row, toggled to change
    @State private var isSelected = false;
    
    var body: some View {
        HStack(spacing:20){
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if(isSelected){
                Spacer()
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.black)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color.black)
        .cornerRadius(10)
//        .shadow(color: .gray, radius: 5, x:  0.5, y: 0.5)
        .onTapGesture {
            isSelected = true
        }
        
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Smol Doggos are the best Doggos"))
    }
}
