//
//  ButtonsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            //method1
            Button("Press me!") {
                self.title = "Button NUMBER 1 was pressed."
            }.accentColor(.red)
            
            //method2
            Button {
                self.title = "Button NUMBER 2 was pressed."
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.cyan
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            }

            //method3
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    )
            }

            //method4
            Button {
                self.title = "Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

            
            
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
