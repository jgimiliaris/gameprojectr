//
//  TimerViewModel.swift
//  QuizGame
//
import Foundation
import Combine

class TimerViewModel: ObservableObject {
    @Published var remainingTime: Int = 15
    var timer: Timer? = nil

    func startTimer() {
        remainingTime = 15
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            if self?.remainingTime ?? 0 > 0 {
                self?.remainingTime -= 1
            } else {
                timer.invalidate()
            }
        }
    }

    func resetTimer() {
        startTimer()
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}
