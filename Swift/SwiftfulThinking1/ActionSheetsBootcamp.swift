//
//  ActionSheetsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 30/01/23.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

                
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
                //ActionSheet(title: Text("This is the title."))
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //code to report post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //code to delete post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
            
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
            
        }
        
        
        //return ActionSheet(title: Text("This is the title."))

//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//
//        return ActionSheet(title: Text("This is title"),
//        message: Text("This is the message"),
//        buttons: [button1, button2, button3, button1, button2, button3])
    }
}

struct ActionSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetsBootcamp()
    }
}
