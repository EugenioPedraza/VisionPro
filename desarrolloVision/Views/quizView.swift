//
//  quizView.swift
//  desarrolloVision
//
//  Created by Esteban Aleman on 04/03/24.
//

import SwiftUI

struct quizView: View {
    
    var quiz: QuizData
    
    var body: some View {
        VStack {
            Text("Quiz")
            .font(.system(size: 70))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
            
            Divider()
            
            
            Text(quiz.Pregunta)
                .font(.system(size: 60))
                .padding(.top, 120)
                .padding(.bottom, 40)
            
            
            
            VStack(alignment: .leading, spacing: 10) {
                OptionView(optionText: quiz.Opcion1)
                OptionView(optionText: quiz.Opcion2)
                OptionView(optionText: quiz.Opcion3)
                OptionView(optionText: quiz.Opcion4)
            }
                        .font(.headline)
                        .padding()
            
            
        }
        Spacer()
    }
}

#Preview {
    quizView(quiz: arrQuiz[0])
}


