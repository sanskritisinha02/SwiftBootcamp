//
//  ForEachBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 24/01/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey, everyone!"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            
            //Text(myString)
            ForEach(data.indices) { index in
                Text("\(data[index]):\(index)")
                    .font(.title)
            }
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
            
            
            
//            ForEach(0..<10){
//                index in
//                //Text("Heyaaa! : \(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                        .foregroundColor(.cyan)
//                    Text("Index is: \(index)")
//                }
//            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
