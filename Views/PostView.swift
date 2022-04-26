//
//  PostView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI

struct PostView: View {
    
    @State var isExpanded: Bool = false
    var user: User
    var post: Post
    @State var captionLineLimit: Int = 1
    
    var body: some View {
        VStack ( spacing: .zero) {
            
            // MARK: Header
            HStack {
                
                Image(user.ProfileImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                Text(user.Name)
                    .font(.system(size: 14))
                    .font(.headline)
                
                Spacer()
                
                Image(systemName: "slider.horizontal.3")
                    
            }
            .padding(10)
            .frame(width: UIScreen.main.bounds.width, height: 40)
            
            // MARK: Body
            Image(post.PostURL)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .clipped()
            
            // MARK: Footer
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 5)
                
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 5)
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 5)
                
            }
            .padding(10)
            
            VStack (alignment: .trailing) {
                
                Text(String(post.LikesCount) + " likes")
                    .font(.caption)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if !isExpanded && post.Caption != "" {
                    
                    Text(post.Caption)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = true
                        }
                        .lineLimit(captionLineLimit)
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if post.Caption.count > 70 {
                        
                    Text("Show more")
                        .font(.caption)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = true
                        }
                    }
                        
                    
                } else if isExpanded && post.Caption != "" {
                    Text(post.Caption)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = false
                        }
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if post.Caption.count > 70 {
                    Text("Show less")
                        .font(.caption)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = false
                        }
                    }
                    
                }
                
                Text("View comments")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal,10)
            
            Spacer()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(user: firstUser, post: posts[0])
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width + 140))
    }
}
