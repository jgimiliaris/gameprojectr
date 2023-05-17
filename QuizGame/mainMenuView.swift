//
//  mainMenuView.swift
//  QuizGame
//
//  Created by John Gimiliaris on 09/05/2023.
//

import SwiftUI

struct mainMenuView: View {
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
                    Text("The Best Quiz Game")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    NavigationLink(destination: TopicSelectView()) {
                        Text("Start Game")
                            .font(.title2)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    
                    NavigationLink(destination: FAQView()) {
                        Text("View FAQ")
                            .font(.title2)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 20) // Add padding to the sides of the VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // Center align the VStack
                .navigationBarHidden(true)
            }
        }
        
    }
    
    
    struct MainMenuView_Previews: PreviewProvider {
        static var previews: some View {
            mainMenuView()
        }
    }
}
