//
//  HomeView.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 17/04/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Home Page")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
