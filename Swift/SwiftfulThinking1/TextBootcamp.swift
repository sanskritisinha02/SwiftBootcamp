//
//  TextBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 15/01/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Heyaaa!".uppercased())
            .frame(width: 200, height: 100, alignment: .leading)
//            .font(.body)
//            //.fontWeight(.heavy)
//            .bold()
//            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
        
            //.font(.system(size: 24, weight: .semibold, design: .serif))
        
            //.baselineOffset(20)
            //.kerning(1.0)
            //.multilineTextAlignment(.leading)
            .foregroundColor(.red)
            
            .minimumScaleFactor(0.1)
        
            
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
