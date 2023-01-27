//
//  ExtractFunctionsAndViewsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct ExtractFunctionsAndViewsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        
        }
    }
    
    
    
    func buttonPressed() {
        
        backgroundColor = .yellow
        
    }
    
}

struct ExtractFunctionsAndViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctionsAndViewsBootcamp()
    }
}
