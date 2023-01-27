//
//  StackBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        //        ZStack (alignment: .center,
        //                content: {
        //            Rectangle()
        //                .fill(.cyan)
        //                .frame(width: 200, height: 200)
        //
        //            Rectangle()
        //                .fill(.mint)
        //                .frame(width: 150, height: 150)
        //
        //            Rectangle()
        //                .fill(.orange)
        //                .frame(width: 100, height: 100)
        //            })
        //        }
        
//        ZStack(alignment: .top) {
//
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30){
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//
//        }
        
        
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your cart.")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        VStack(spacing: 50) {
            
            //same thing from ZStack and Background
            
            //for one layer go with Background
            // for multiple layer go with ZStack
            
            ZStack {
                Circle()
                    .frame(width: 100,height: 100)
                    
                Text("1")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            
            Text("1")
                .font(.largeTitle)
                .italic()
                .bold()
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100,height: 100)
                )
        }
    }
    
    struct StackBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            StackBootcamp()
        }
    }
}
