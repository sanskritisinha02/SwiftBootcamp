//
//  NavigationLinkAndViewBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 28/01/23.
//

import SwiftUI

struct NavigationLinkAndViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello Everyone!",
                               destination: myOtherscreen())
                
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            
            //how to change icon into Button
            .navigationBarItems(
                leading:
                    
                    HStack {
                        
                        Image(systemName: "flame.fill")
                        Image(systemName: "person.fill")
                    },
                    
                    
                trailing: NavigationLink(
                    destination: myOtherscreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                //to change colour of gear icon
                .accentColor(.red)
            )
        }
        
    }
}

struct myOtherscreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("GreenScreen")
                //.navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here.", destination: Text("ThirdScreen"))
            }
            
             
        }
    }
}


struct NavigationLinkAndViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkAndViewBootcamp()
    }
}
