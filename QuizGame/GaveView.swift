//
//  GaveView.swift
//  QuizGame
//
//  Created by John Gimiliaris
//
import SwiftUI

//main game view
struct GaveView: View {
    @ObservedObject var quizVM: QuizViewModel
    @ObservedObject var timerVM: TimerViewModel

    var body: some View {
        VStack {
            ProgressBar(value: $timerVM.remainingTime, maxValue: 15.0)
                .frame(height: 24)
                .padding(.horizontal)
            
            if quizVM.isGameOver {
                Text("Game Over! Your score is \(quizVM.score)")
                    .font(.largeTitle)
                    .padding()
                Button(action: {
                    quizVM.restartGame()
                    timerVM.startTimer()
                }) {
                    Text("Restart Game")
                        .font(.title)
                        .bold()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            } else {
                Text(quizVM.currentQuestion?.questionText ?? "")
                    .font(.title)
                    .bold()
                    .padding()
                
                ForEach(quizVM.currentAnswers.indices, id: \.self) { index in
                    Button(action: {
                        quizVM.answerQuestion(index: index)
                        timerVM.startTimer()
                    }) {
                        Text(quizVM.currentAnswers[index].answerText)
                            .font(.title2)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom)
                }
            }
        }
        .onAppear {
            quizVM.getNewQuestion()
            timerVM.startTimer()
        }
    }
}

//Progress bar
struct ProgressBar: View {
    @Binding var value: Double
  
    var maxValue: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().opacity(0.3)
                Rectangle()
                    .frame(width: geometry.size.width * CGFloat(self.value / self.maxValue))
            }
        }
    }
}
