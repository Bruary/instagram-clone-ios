//
//  HomeView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        VStack{
            Text("Instagram")
                .font(.system(size: 20))
                .font(.headline)
                .fontWeight(.black)
                .padding(5)
            
            
            List {
                    
                ForEach(posts, id: \.id) { post in
                    PostView(user: firstUser, post: post)
                }
                
            }
            .padding(.leading , -20) // to remove the extra space on the left
            .listStyle(.plain)
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
