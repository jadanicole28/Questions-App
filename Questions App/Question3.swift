//
//  Question3.swift
//  Questions App
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct Question3: View {
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
                    Text("Question 3")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("What is the largest country in the world?")
                        .font(.title2)
                        .padding()
                    
                    Button("Brazil") {
                        response = "Try again!"
                    }
                
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    
                    Button("Russia") {
                        response = "Yes, Russia is the largest country in the world!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    
                    Button("Canada") {
                        response = "Not quite!"
                        
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
                
                NavigationLink(destination: ContentView()) {
                    Text("Restart")
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
    Question3()
}
