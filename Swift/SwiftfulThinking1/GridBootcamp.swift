//
//  GridBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                Section(header:
                            Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(.cyan)
                            .padding()
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
            }
                }
                
                Section(header:
                            Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(.mint)
                            .padding()
                ) {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .frame(height: 150)
            }
                }
            })
        
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
