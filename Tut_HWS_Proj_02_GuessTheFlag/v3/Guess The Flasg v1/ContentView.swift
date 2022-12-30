//
//  ContentView.swift
//  Guess The Flasg v1
//
//  Created by Sedat Onat on 18.12.2022.
//

import SwiftUI

struct FlagImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}


struct ContentView: View {
    @State private var questionCounter = 1
    @State private var showingScore = false
    @State private var showingResults = false
    @State private var scoreTitle = ""
    @State private var score = 0
    
    @State private var countries = allCountries.shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var selectedFlag = -1
    
    static let allCountries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]  // these should match the assets
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    
                    
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                        //                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) {number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius:5)
                                .rotation3DEffect(
                                    .degrees(selectedFlag == number ? 360 : 0),
                                    axis: (x: 0, y: 1, z: 0)
                                )
                                .opacity(selectedFlag == -1 || selectedFlag == number ? 1 : 0.25)
                                .scaleEffect(selectedFlag == -1 || selectedFlag == number ? 1 : 0.75)
                                .saturation(selectedFlag == -1 || selectedFlag == number ? 1 : 0)
                                .animation(.default, value: selectedFlag)
                                .blur(radius: selectedFlag == -1 || selectedFlag == number ? 0 : 3)
                        }
                        
                        
                    }
                    
                }
                // End of VStack
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
            
        }
        // End of ZStack
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        
        .alert("Game Over", isPresented: $showingResults) {
            Button("Start Again", action: newGamme)
        } message: {
            Text("Your final score was \(score)")
        }
        
        
        
    }
    // End of body
    
    
    func flagTapped(_ number: Int) {
        selectedFlag = number
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            let needsThe = ["UK", "US"]
            let theirAnswer = countries[number]
            if needsThe.contains(theirAnswer) {
                scoreTitle = "Wrong! That's the flag of the \(countries[number])"
            } else {
                scoreTitle = "Wrong! That's the flag of \(countries[number])"
            }
            
            if score > 0 { score -= 1 }
        }
        
        
        if questionCounter == 8 {
            showingResults = true
        } else {
            showingScore = true
        }
        
        
    }
    
    func askQuestion() {
        countries.remove(at: correctAnswer)
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCounter += 1
        selectedFlag = -1
    }
    
    func newGamme() {
        questionCounter = 0
        score = 0
        countries = Self.allCountries
        askQuestion()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
