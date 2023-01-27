//
//  FrameBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello Againnnnn")
        //stack in layers of frames
            //.background(Color.green)
            //.frame(width: 300, height: 300, alignment: .leading)
            
        
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            //.background(.red)
        
        
        
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
