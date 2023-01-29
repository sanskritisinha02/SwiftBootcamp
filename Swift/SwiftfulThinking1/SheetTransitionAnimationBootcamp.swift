//
//  SheetTransitionAnimationBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 28/01/23.
//

import SwiftUI

struct SheetTransitionAnimationBootcamp: View {
    
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //method-1 -> Sheet
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
        
            
            //method-2 -> Transitions
//            ZStack {
//
//                if showNewScreen {
//                    NewScreen( showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//            }
//
//            }
//            .zIndex(2.0)
            
            
            //method-3 -> animation offset
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
            
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {

        ZStack(alignment: .topLeading) {
            
            Color.purple.edgesIgnoringSafeArea(.all)
            
            Button {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
        
        
        
        
        
    }
    
}

struct SheetTransitionAnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetTransitionAnimationBootcamp()
        //NewScreen()
    }
}
