//
//  PaddingBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello world!")
    //            .background(Color.yellow)
    //            //.frame(width: 100, height: 100)
    //            //.padding()
    //            .padding(.all, 10)
    //            .padding(.leading, 20)
    //            .background(Color.cyan)
            
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            
    //            .frame(maxWidth: .infinity, alignment: .leading)
    //            //.background(.red)
    //            .padding(.leading, 20)
        
            Text("We gave the trainers access to model-written suggestions to help them compose their responses.")
//                .multilineTextAlignment(.center)
        }
        //.background(.cyan)
        .padding(20)
        .padding(.vertical, 30)
        
        .background(.white)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3),
                radius: 10,
                x: 0,
                y: 10)
        .padding(.horizontal, 10)
        //.background(.mint)  
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
