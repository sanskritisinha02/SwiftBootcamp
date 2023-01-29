//
//  AnimationsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 28/01/23.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button"){
                    isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 100 : 0)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true))
            
            
            Spacer()
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
