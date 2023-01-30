//
//  AlertBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 30/01/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: myAlerts? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "Error uploading message 😥"
                    //alertMessage = "Video couldn't be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    //alertTitle = "Successfully uploaded the video 😌"
                    //alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
                
            }
                
                .alert(isPresented: $showAlert, content: {
                    getAlert()
            })
        }
        
        
        
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error :
            return Alert(title: Text("There was an error"))
        case .success :
            return Alert(title: Text("Successfully uploaded"),
                        message: nil,
                         dismissButton: .default(Text("OK"),action: {
                backgroundColor = .green
            }))
                        
    
        default:
            return Alert(title: Text("Error"))
        }
        
        
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
        
        
//        return Alert(title:
//                        Text("Error"),
//                      message: Text("Here we will describe the error"),
//                      dismissButton: .destructive(Text("Delete again!"), action: {
//                    backgroundColor = .mint
//                })
//
//                )
        
        
    }
    
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
