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
                    .frame(width: 20, height: 20)
                    .foregroundColor(isLiked ? Color.red : nil)
                    .padding(.horizontal, 5)
                    .onTapGesture {
                        withAnimation(Animation.spring(response: 0.3, dampingFraction: 0.8, blendDuration: 1.0)) { // dampingFraction is the bounce of the sring (lower value for higher bounce)
                            isLiked.toggle()
                        }
                        
                        // to vibrate when the like button is pressed
                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
                       
                    }
                
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal, 5)
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                    .padding(.horizontal, 5)
                
            }
            .frame(height: 25)
            .padding(10)
            
            VStack (alignment: .trailing) {
                
                Text(String(post.LikesCount) + " likes")
                    .font(.system(size: 14))
                    //.font(.caption)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if !self.isExpanded && post.Caption != "" {
                    
                    Text(post.Caption)
                        //.font(.caption)
                        .font(.system(size: 14))
                        .lineLimit(captionLineLimit)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            print("Did this work 11??")
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
                                    print("Did this work 2222??")
                                    self.isExpanded.toggle()
                                }
                            }
                        //}

//                    Text("Show more")
//                        .font(.caption)
//                        .fontWeight(.bold)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .onTapGesture {
//                            print("Did this work 2222??")
//                            self.isExpanded.toggle()
//                        }
                    }
                        
                    
                } else if self.isExpanded && post.Caption != "" {
                    
                    Text(post.Caption)
                        //.font(.caption)
                        .font(.system(size: 14))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            print("Did this work 3333??")
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
                                    print("Did this work 2222??")
                                    self.isExpanded.toggle()
                                }
                            }
                        
//                    Text("Show less")
//                        .font(.caption)
//                        .fontWeight(.bold)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .onTapGesture {
//                            print("Did this work 444??")
//                            self.isExpanded.toggle()
//                        }
                    }
                    
                }
                
                Text("View comments")
                    //.font(.footnote)
                    .font(.system(size: 12))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal,10)
            
            //Spacer()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(user: firstUser, post: posts[0])
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width + 140))
    }
}
