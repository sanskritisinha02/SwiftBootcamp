//
//  TernaryOperatorsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 26/01/23.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    
    var body: some View {
        
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!!!": "Ending State")
            
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState == true ? Color.cyan : Color.green)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
            
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.red)
//                    .frame(width: 200, height: 100)
//            }
//            else {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            
            
            Spacer()
        }
        
        
        
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
