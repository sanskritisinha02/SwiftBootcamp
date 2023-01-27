//
//  StatePropertyBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct StatePropertyBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var myCount: Int = 0
    
    var body: some View {
        
        ZStack {
            
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text(myTitle)
                    .font(.title)
                    
                Text("Count: \(myCount)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    
                    Button("Button #1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed."
                        myCount += 1
                    }
                    
                    Button("Button #2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed."
                        myCount -= 1
                    }
                    
                }
            }
            .foregroundColor(.white)
            
        }
        
        
    }
}

struct StatePropertyBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyBootcamp()
    }
}
