//
//  CommentsView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 08/05/2022.
//

import SwiftUI

struct CommentsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            
            Text("Comments show here lol")
            
        }
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("Comments")
            }
            
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
