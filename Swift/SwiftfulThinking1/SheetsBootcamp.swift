//
//  SheetsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 28/01/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }}
        //only one full screen allowes
//        .fullScreenCover(isPresented: $showSheet, content: {
//            SecondScreen()
//        })
        .sheet(isPresented: $showSheet, content: {
            SecondScreen()
        })
        
        //point to remember
        //1. No third sheet allowed
        //2. No conditional statements (if...else) allowed. --------------->>>>>>> Very Important.
        
            
        }
    }

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding(20)
                    //.background(Color.white.cornerRadius(10))
            }}
    }
    
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        //SecondScreen()
    }
}
