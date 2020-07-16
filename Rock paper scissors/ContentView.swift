//
//  ContentView.swift
//  Rock paper scissors
//
//  Created by Melissa Wilkinson on 7/16/20.
//  Copyright © 2020 Watt Wilkinson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to the rock paper scissors app!")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Text("Click on the button to play")
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
