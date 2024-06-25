//
//  Question2.swift
//  Questions App
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct Question2: View {
   @State private var response = ""
    
    var body: some View {
        
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            
            VStack {
                Text("Geography Trivia!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                VStack {
                    Text("Question 2")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("What is the longest river in the world?")
                        .font(.title2)
                        .padding()
                   
                    Button("The Nile") {
                        response = "Yes, The Nile is the longest river in the world!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    
                    Button("Mississippi River") {
                        response = "Not quite!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    
                    Button("Amazon River") {
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
                
                NavigationLink(destination: Question3()) {
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

#Preview {
    Question2()
}
