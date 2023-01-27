//
//  ImageBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("Apple")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 200)
            //.foregroundColor(.red)
            //.cornerRadius(150)
            //.clipShape(RoundedRectangle(cornerRadius: 25))
            //.clipShape(Ellipse())
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
