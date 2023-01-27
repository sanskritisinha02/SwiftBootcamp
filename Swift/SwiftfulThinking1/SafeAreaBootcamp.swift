//
//  SafeAreaBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }.background(.red)
        
//        ZStack {
//
//            //Background Layer
//            Color.cyan
//                .edgesIgnoringSafeArea(.all)
//            //Foreground Layer
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            // .background(.red)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
