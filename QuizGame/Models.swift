//
//  Models.swift
//  QuizGame
//
import Foundation

struct Quiz: Identifiable {
    var id = UUID()
    var topic: String
    var questions: [Question]
}

struct Question {
    var questionText: String
    var answers: [Answer]
}

struct Answer {
    var answerText: String
    var isCorrect: Bool
}
