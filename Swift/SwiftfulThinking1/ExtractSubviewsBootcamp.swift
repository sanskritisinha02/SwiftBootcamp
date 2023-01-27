//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color(.cyan).edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Total Values", count: 19, color: .yellow)
            MyItem(title: "Current Values", count: 41, color: .pink)
            MyItem(title: "Past Values", count: 07, color: .green)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
