//
//  ContentView.swift
//  MySecondApp
//
//  Created by Summer on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    
    
    var body: some View {
        VStack {
            Text("What is your name?")
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            
            Button("Submit Name"){
                textTitle = "Welcome, \(name)!!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
