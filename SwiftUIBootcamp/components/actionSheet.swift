//
//  actionSheet.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 23/12/24.
//

import SwiftUI

struct actionSheet: View {
    
    @State var showSheet = false
    var body: some View {
        
        Button("Show Action Sheet"){
            
            showSheet.toggle()
            
        }.actionSheet(isPresented: $showSheet, content: {
            getActionSheet()
            
        })
    }
    
    func getActionSheet() -> ActionSheet{
        return ActionSheet(
            title: Text("Action Sheet"),
            message: Text("Choose an option"),
            buttons: [
            .default(Text("Option 1"), action: {
                print("Option 1")
            }),
            .default(Text("Option 2"), action: {
                print("Option 2")
            }),
            .destructive(Text("Delete"), action: {
                print("Deleting")
            }),
            .cancel()])
    }
}

#Preview {
    actionSheet()
}
