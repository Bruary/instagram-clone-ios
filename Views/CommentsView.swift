//
//  CommentsView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 08/05/2022.
//

import SwiftUI

struct CommentsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var post: Post
    @State var user: User
    
    var body: some View {
        
        VStack {
            
            ScrollView{
            
            HStack {
                Image(user.ProfileImageUrl)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text(user.Name + "  " + post.Caption)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(10)
            
            Divider()
            
                
            ForEach(comments) { comment in
                HStack {
                    Image(user.ProfileImageUrl)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(user.Name + "  " + comment.CommentString)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(10)
                
                
            }
            
            }
            Spacer()
            
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
        CommentsView(post: posts[0], user: users[0])
    }
}
