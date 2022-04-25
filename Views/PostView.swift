//
//  PostView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI

struct PostView: View {
    
    @State var isExpanded: Bool = false
    var caption: String = "Fatou, the oldest and youngest ahahahafesfsefsfsefe fsefgsfseg srgdtrs wrgedtrfserdg"
    @State var captionLineLimit: Int = 1
    
    var body: some View {
        VStack ( spacing: .zero) {
            
            // MARK: Header
            HStack {
                Image(systemName: "photo.circle")
                
                Text("AcountName")
                    .font(.system(size: 14))
                    .font(.headline)
                
                Spacer()
                
                Image(systemName: "slider.horizontal.3")
                    
            }
            .padding(10)
            .frame(width: UIScreen.main.bounds.width, height: 40)
            
            // MARK: Body
            Image("")
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width) // set aspect ratio to 1:1
                .background(Color.red)
            
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
                
                Text("13,270 likes")
                    .font(.caption)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if !isExpanded && caption != "" {
                    
                    Text(caption)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = true
                        }
                        .lineLimit(captionLineLimit)
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if caption.count > 70 {
                        
                    Text("Show more")
                        .font(.caption)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = true
                        }
                    }
                        
                    
                } else if isExpanded && caption != "" {
                    Text(caption)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            isExpanded = false
                        }
                    
                    // If caption is longer than 70 chars then consider it as more than one line
                    // And add show more and show less
                    if caption.count > 70 {
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
        PostView()
            .previewLayout(.fixed(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width + 140))
    }
}
