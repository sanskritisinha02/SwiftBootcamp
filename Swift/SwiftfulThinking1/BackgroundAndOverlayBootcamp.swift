//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        //Background
//        Text("Hello, World")
//            //.frame(width: 100, height: 100, alignment: .center)
//            .background(
//                //.red
//                //LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange]), startPoint: .top, endPoint: .bottom)
//
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.gray]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            //.frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    //.fill(Color.gray).frame(width: 120, height: 120, alignment: .center)
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.cyan]), startPoint: .leading, endPoint: .trailing)).frame(width: 120, height: 120, alignment: .center)
//            )
        
        
        //Overlays
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            }
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 150, height: 150)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50),
//                alignment : .topLeading
//            )
//            .background (
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150),
//                alignment : .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .pink, radius: 10, x: 0, y:0)
                    .overlay(
                        Circle()
                            .fill(.white)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                
                            )
                            .shadow(color: .pink, radius: 10, x: 0, y:0)
                        , alignment : .bottomTrailing
                    )
                
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
