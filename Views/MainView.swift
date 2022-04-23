//
//  MainView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedView: Int = 0
    
    var body: some View {
        
        TabView (selection: $selectedView){
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            
            CreatePostView()
                .tabItem {
                    Image(systemName: "plus.rectangle")
                    Text("create")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
            
        }
        .accentColor(Color.black)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
