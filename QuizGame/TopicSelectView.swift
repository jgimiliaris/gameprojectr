//
//  GameView.swift
//  QuizGame
//
    
    import SwiftUI

    struct TopicSelectView: View {
        let quizzes = [
            Quiz(topic: "F1", questions: [
                Question(questionText: "Which team won the F1 Constructor's Championship in 2020?", answers: [
                    Answer(answerText: "Mercedes", isCorrect: true),
                    Answer(answerText: "Red Bull Racing", isCorrect: false),
                    Answer(answerText: "Ferrari", isCorrect: false),
                    Answer(answerText: "McLaren", isCorrect: false)
                ]),
                Question(questionText: "Which circuit is known for its high-speed corners and is a favorite among drivers?", answers: [
                    Answer(answerText: "Circuit de Barcelona-Catalunya", isCorrect: false),
                    Answer(answerText: "Silverstone Circuit", isCorrect: false),
                    Answer(answerText: "Suzuka Circuit", isCorrect: true),
                    Answer(answerText: "Circuit of the Americas", isCorrect: false)
                ]),
                Question(questionText: "What is the name of the current CEO of Formula 1?", answers: [
                    Answer(answerText: "Bernie Ecclestone", isCorrect: false),
                    Answer(answerText: "Jean Todt", isCorrect: false),
                    Answer(answerText: "Stefano Domenicali", isCorrect: true),
                    Answer(answerText: "Ross Brawn", isCorrect: false)
                ]),
                Question(questionText: "What is the purpose of DRS (Drag Reduction System)?", answers: [
                    Answer(answerText: "To increase downforce", isCorrect: false),
                    Answer(answerText: "To improve fuel efficiency", isCorrect: false),
                    Answer(answerText: "To reduce drag and increase top speed", isCorrect: true),
                    Answer(answerText: "To enhance acceleration", isCorrect: false)
                ]),
                Question(questionText: "How many races are there in a typical F1 season?", answers: [
                    Answer(answerText: "15", isCorrect: false),
                    Answer(answerText: "20", isCorrect: false),
                    Answer(answerText: "23", isCorrect: true),
                    Answer(answerText: "25", isCorrect: false)
                ]),
                Question(questionText: "What is the name of the current reigning F1 World Champion?", answers: [
                    Answer(answerText: "Lewis Hamilton", isCorrect: false),
                    Answer(answerText: "Sebastian Vettel", isCorrect: false),
                    Answer(answerText: "Max Verstappen", isCorrect: true),
                    Answer(answerText: "Fernando Alonso", isCorrect: false)
                ]),
                Question(questionText: "Which team did Ayrton Senna win all three of his World Championships with?", answers: [
                    Answer(answerText: "McLaren", isCorrect: true),
                    Answer(answerText: "Williams", isCorrect: false),
                    Answer(answerText: "Ferrari", isCorrect: false),
                    Answer(answerText: "Renault", isCorrect: false)
                ]),
                Question(questionText: "What is the name of the tire supplier in F1?", answers: [
                    Answer(answerText: "Bridgestone", isCorrect: false),
                    Answer(answerText: "Pirelli", isCorrect: true),
                    Answer(answerText: "Goodyear", isCorrect: false),
                    Answer(answerText: "Michelin", isCorrect: false)
                ]),
                Question(questionText: "Which driver famously won the 1986 Japanese Grand Prix in torrential rain after starting from 14th on the grid?", answers: [
                    Answer(answerText: "Dammon Hill", isCorrect: false),
                    Answer(answerText: "Jacques Villeneuve", isCorrect: false),
                    Answer(answerText: "Michael Schumacher", isCorrect: true),
                    Answer(answerText: "Mika Hakkinen", isCorrect: false)
                ])
            ]),
            
            Quiz(topic: "Geography", questions: [
                Question(questionText: "Which of the following is the largest country in the world by land area?", answers: [
                    Answer(answerText: "Canada", isCorrect: false),
                    Answer(answerText: "Russia", isCorrect: true),
                    Answer(answerText: "China", isCorrect: false),
                    Answer(answerText: "Brazil", isCorrect: false)
                ]),
                Question(questionText: "Which mountain range is the highest in the world?", answers: [
                    Answer(answerText: "Rocky Mountains", isCorrect: false),
                    Answer(answerText: "Himalayas", isCorrect: true),
                    Answer(answerText: "Andes", isCorrect: false),
                    Answer(answerText: "Alps", isCorrect: false)
                ]),
                Question(questionText: "Which river is the longest in the world?", answers: [
                    Answer(answerText: "Nile", isCorrect: true),
                    Answer(answerText: "Amazon", isCorrect: false),
                    Answer(answerText: "Yangtze", isCorrect: false),
                    Answer(answerText: "Mississippi", isCorrect: false)
                ]),
                Question(questionText: "What is the capital of Australia?", answers: [
                    Answer(answerText: "Sydney", isCorrect: false),
                    Answer(answerText: "Melbourne", isCorrect: false),
                    Answer(answerText: "Canberra", isCorrect: true),
                    Answer(answerText: "Perth", isCorrect: false)
                ]),
                Question(questionText: "Which continent is the driest in the world?", answers: [
                    Answer(answerText: "Europe", isCorrect: false),
                    Answer(answerText: "Asia", isCorrect: false),
                    Answer(answerText: "Antarctica", isCorrect: true),
                    Answer(answerText: "Australia", isCorrect: false)
                ]),
                Question(questionText: "Which is the largest country in Africa by land area?", answers: [
                    Answer(answerText: "Nigeria", isCorrect: false),
                    Answer(answerText: "Egypt", isCorrect: false),
                    Answer(answerText: "Democratic Republic of the Congo", isCorrect: false),
                    Answer(answerText: "Algeria", isCorrect: true)
                ]),
                Question(questionText: "Which ocean is the largest in the world?", answers: [
                    Answer(answerText: "Indian Ocean", isCorrect: false),
                    Answer(answerText: "Atlantic Ocean", isCorrect: false),
                    Answer(answerText: "Southern Ocean", isCorrect: false),
                    Answer(answerText: "Pacific Ocean", isCorrect: true)
                ]),
                Question(questionText: "What is the smallest country in the world by land area?", answers: [
                    Answer(answerText: "Monaco", isCorrect: false),
                    Answer(answerText: "Vatican City", isCorrect: true),
                    Answer(answerText: "San Marino", isCorrect: false),
                    Answer(answerText: "Liechtenstein", isCorrect: false)
                    
                ])
            ]),
            
            Quiz(topic: "App Development", questions: [
                Question(questionText: "Which programming language is most commonly used for developing mobile apps?", answers: [
                    Answer(answerText: "Java", isCorrect: false),
                    Answer(answerText: "Python", isCorrect: false),
                    Answer(answerText: "Swift", isCorrect: true),
                    Answer(answerText: "PHP", isCorrect: false)
                ]),
                // ... include other questions for this topic here
            ])
        ]
        
        var body: some View {
            NavigationView {
                ZStack {
                    Color.accentColor
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.96)
                        .foregroundColor(.white.opacity(0.06))
                    
                    Circle()
                        .scale(1.8)
                        .foregroundColor(.white)
                    VStack(spacing: 20) {
                        Text("Select a Topic")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                        
                        ForEach(quizzes, id: \.topic) { quiz in
                            NavigationLink(destination: GaveView(quizVM: QuizViewModel(quiz: quiz), timerVM: TimerViewModel())) {
                                Text(quiz.topic)
                                    .font(.title2)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
                .padding(.horizontal, 20) // Add padding to the sides of the VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .navigationBarHidden(true)
            }
        }
    }
