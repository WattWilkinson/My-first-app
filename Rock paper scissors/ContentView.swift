//
//  ContentView.swift
//  Rock paper scissors
//
//  Created by Melissa Wilkinson on 7/16/20.
//  Copyright © 2020 Watt Wilkinson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var randomNumber = Int.random(in: 1...3)
    @State var image = "Rock"
    @State var lost = "You lost!"
    @State var won = "You won!"
    @State var tie = "Tie"
    @State var text = "Result"
    var body: some View {
        VStack {
            Text("Welcome to the rock paper scissors app!")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Spacer()
            Text("Click on the buttons to play, choose Rock, Paper, or Scissors")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            Image(image).resizable().aspectRatio(contentMode: .fit)
            HStack {
                
                Spacer()
                Button(action: {self.play(number: 1)}) {
                    Text("Rock")
                }
                Spacer()
                Button(action: {self.play(number: 2)}) {
                        Text("Paper")
                    }
                Spacer()
                Button(action: {self.play(number: 3)}) {
                    Text("Scissors")
                }
                Spacer()
            }
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.068, saturation: 1.0, brightness: 1.0))
            Spacer()
            }
           
        }
    func play(number: Int) {
        randomNumber = Int.random(in: 1...3)
        if number == 1 {
            if randomNumber == 1 {
                image = "Rock"
            }
            if randomNumber == 2 {
                image = "Paper"
            }
            if randomNumber == 3 {
                image = "Scissors"
        }
            if image == "Rock" {
                text = "Tie"
            }
            if image == "Paper" {
                text = "You lost"
            }
            if image == "Scissors" {
                text = "You won"
            }
            
        }
        if number == 2 {
            if randomNumber == 1 {
                    image = "Rock"
                }
                if randomNumber == 2 {
                    image = "Paper"
                }
                if randomNumber == 3 {
                    image = "Scissors"
            }
                if image == "Rock" {
                    text = "You won"
                }
                if image == "Paper" {
                    text = "Tie"
                }
                if image == "Scissors" {
                    text = "You lost"
                }
        }
        if number == 3 {
            if randomNumber == 1 {
                    image = "Rock"
                }
                if randomNumber == 2 {
                    image = "Paper"
                }
                if randomNumber == 3 {
                    image = "Scissors"
            }
                if image == "Rock" {
                    text = "You lost"
                }
                if image == "Paper" {
                    text = "You won"
                }
                if image == "Scissors" {
                    text = "tie"
                }
        }
    }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
