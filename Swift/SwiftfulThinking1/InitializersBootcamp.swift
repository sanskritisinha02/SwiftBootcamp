//
//  InitializersBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 24/01/23.
//

import SwiftUI

struct InitializersBootcamp: View {
    
    let backgroundColor : Color
    let count : Int
    let title : String
    
    init(count: Int, fruit: Fruit) {
        //self.backgroundColor = backgroundColor
        self.count = count
        //self.title = title
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializersBootcamp(count: 100, fruit: .orange)
            InitializersBootcamp(count: 50, fruit: .apple)
        }
        
    }
}
