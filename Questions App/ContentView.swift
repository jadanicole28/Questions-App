//
//  ContentView.swift
//  Questions App
//
//  Created by Scholar on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var response = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGreen)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Geography Trivia!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    VStack {
                        Text("Question 1")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("What country has the largest population?")
                            .font(.title2)
                            .padding()
                        Button("China") {
                            response = "Not quite!"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.black)
                        .cornerRadius(5.0)
                        
                        Button("India") {
                            response = "Yes, India has the largest population in the world!"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.black)
                        .cornerRadius(5.0)
                        
                        Button("United States") {
                            response = "Try again!"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.black)
                        .cornerRadius(5.0)
                        
                        Text(response)
                            .font(.title3)
                            .padding()
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: Question2()) {
                        Text("Next!")
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(5.0)
                
                }
                .padding()
            }
        }

    }
}

#Preview {
    ContentView()
}
