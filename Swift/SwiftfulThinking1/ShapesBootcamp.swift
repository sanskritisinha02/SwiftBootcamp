//
//  ShapesBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 19/01/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
            //.trim(from: 0.4, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
        
            .frame(width: 300, height: 200)
        
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
