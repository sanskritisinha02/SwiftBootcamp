//
//  SpacerBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        //        HStack(spacing: 0) {
        //
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(.red)
        //
        //
        //            Rectangle()
        //                .fill(.orange)
        //                .frame(width: 50, height: 50)
        //
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.red)
        //
        //            Rectangle()
        //                .fill(.yellow)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(.red)
        //
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 50, height: 50)
        //
        //
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(.red)
        
        VStack{
            HStack(spacing: 0) {
                
                Image(systemName: "xmark")
                Spacer()
                    //.frame(height: 10)
                    //.background(.orange)
                Image(systemName: "gear")
                
            }
            .font(.largeTitle)
            //.background(.yellow)
            .padding(.horizontal)
            //.background(.blue)
            
            Spacer()
                //.frame(width: 10)
                //.background(.orange)
            
            
            Rectangle()
                .frame(height: 55)
        }
        //.background(.yellow)
    }
    
    struct SpacerBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            SpacerBootcamp()
        }
    }
}
