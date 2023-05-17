//
//  QuizViewModel.swift
//  QuizGame

import Foundation

class QuizViewModel: ObservableObject {
    @Published var quiz: Quiz
    @Published var currentQuestion: Question?
    @Published var answers: [Answer] = []
    @Published var selectedAnswerIndex: Int = -1
    @Published var score: Int = 0
    @Published var questionCounter: Int = 0

    private var correctAnswers: Int = 0
    private var questions: [Question] = []

    init(quiz: Quiz) {
        self.quiz = quiz
        self.questions = quiz.questions.shuffled()
        getNewQuestion(completion: {_ in })
    }

    func getNewQuestion(completion: @escaping (Bool) -> Void) {
        if !questions.isEmpty {
            let question = questions.removeFirst()
            currentQuestion = question
            answers = question.answers.shuffled()
            questionCounter += 1
            completion(true)
        } else {
            completion(false)
        }
    }

    func checkAnswer() {
        guard let currentQuestion = currentQuestion,
              selectedAnswerIndex != -1 else { return }
        if answers[selectedAnswerIndex].isCorrect {
            correctAnswers += 1
            score = Int((Double(correctAnswers) / Double(questionCounter)) * 100)
        }
    }

    func resetGame() {
        score = 0
        questionCounter = 0
        correctAnswers = 0
        questions = quiz.questions.shuffled()
        getNewQuestion(completion: {_ in })
    }
}
