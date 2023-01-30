//
//  contextMenuBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 30/01/23.
//

import SwiftUI

struct contextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(.cyan).cornerRadius(30)
        .contextMenu {
            
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }

            
            Button {
                backgroundColor = .green
            } label: {
                Text("Report")
            }
            
            Button {
                backgroundColor = .blue
            } label: {
                HStack {
                    Text("Like")
                    
                    Image(systemName: "heart.fill")
                }
            }


            
        }

    }
}

struct contextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        contextMenuBootcamp()
    }
}
