//
//  HomeView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            
                ScrollView (.vertical, showsIndicators: false) {
                    
                    ForEach(posts) { post in
                        PostView(user: firstUser, post: post)
                    }
                    
                }
                .navigationTitle("Instagram")
                .navigationBarTitleDisplayMode(.automatic)
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
