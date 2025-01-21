//
//  ContentView.swift
//  Ch 1.5 Conditionals+Constant+Scope
//
//  Created by Lucas Schmidt on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = ""
    @State var phrase = ""
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(phrase)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                if imageName == "sun.max.fill" {
                    imageName = "hand.thumbsup"
                    phrase = "You are Great!"
                }
                else {
                    imageName = "sun.max.fill"
                    phrase = "You are Aweseome!"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
