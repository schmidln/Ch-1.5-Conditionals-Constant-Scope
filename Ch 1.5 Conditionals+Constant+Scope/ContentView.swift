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
                
                let message1 = "You are Aweseome!"
                let message2 = "You are Great!"
                
                if phrase == message1 {
                    imageName = "hand.thumbsup"
                    phrase = message2
                }
                else {
                    imageName = "sun.max.fill"
                    phrase = message1
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
