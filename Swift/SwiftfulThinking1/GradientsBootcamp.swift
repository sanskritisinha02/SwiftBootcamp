//
//  GradientsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
//        (cornerRadius: 25.0)
//            .fill(
//                //.red
//                )
//                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]),
//                    startPoint: .top,
//                    endPoint: .bottom)
                
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200)
//            )
        
                AngularGradient(colors: [Color.red, Color.blue],
                                center: .topLeading,
                                angle: .degrees(180 + 45)
                                )
                
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
