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
                
            
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                ForEach(posts) { post in
                    PostView(user: firstUser, post: post)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
