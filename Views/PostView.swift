//
//  PostView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI
import AudioToolbox

struct PostView: View {
    
    @State var isExpanded: Bool = false
    @State var isLiked: Bool = false
    @State var isBookmarked: Bool = false
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
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                .scaledToFit()
                .clipped()
            
            // MARK: Footer
            HStack {
                
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                    .foregroundColor(isLiked ? Color.red : nil)
                    .padding(.horizontal, 5)
                    .onTapGesture {
                        withAnimation(Animation.spring(response: 0.3, dampingFraction: 0.8, blendDuration: 1.0)) { // dampingFraction is the bounce of the sring (lower value for higher bounce)
                            isLiked.toggle()
                        }
                        
                        // to trigger a haptic feedback when the like button is pressed
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        
                    }
                
                NavigationLink {
                    CommentsView()
                } label: {
                    Image(systemName: "message")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 20)
                        .padding(.horizontal, 5)
                }
                
                Spacer()
                
                Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                    .padding(.horizontal, 5)
                    .onTapGesture {
                        withAnimation(Animation.spring(response: 0.8, dampingFraction: 0.8, blendDuration: 1.0)) {
                            isBookmarked.toggle()
                        }
                        
                        // to trigger a haptic feedback when the bookmark button is pressed
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                    }
                
            }
            .frame(height: 25)
            .padding(10)
            
            VStack (alignment: .trailing) {
                
                Text(String(post.LikesCount) + " likes")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if !self.isExpanded && post.Caption != "" {
                    
                    Text(post.Caption)
                        .font(.system(size: 14))
                        .lineLimit(captionLineLimit)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            self.isExpanded.toggle()
                        }
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if post.Caption.count > 70 {
                        
                        Button {
                            self.isExpanded.toggle()
                        } label: {
                            Text("Show more")
                                .font(.caption)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .onTapGesture {
                                    self.isExpanded.toggle()
                                }
                        }
                        
                    }
                    
                    
                } else if self.isExpanded && post.Caption != "" {
                    
                    Text(post.Caption)
                    //.font(.caption)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            self.isExpanded.toggle()
                        }
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if post.Caption.count > 70 {
                        
                        Button {
                            self.isExpanded.toggle()
                        } label: {
                            Text("Show less")
                                .font(.caption)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .onTapGesture {
                                    self.isExpanded.toggle()
                                }
                        }
                        
                    }
                    
                }
                
                Text("View comments")
                    .font(.system(size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal,10)
            
        }
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(user: firstUser, post: posts[0])
            .previewLayout(.sizeThatFits)
    }
}
