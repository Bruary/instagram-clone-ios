//
//  PostModel.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 23/04/2022.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var PostURL: String
    var Caption: String
    var LikesCount: Int
    var CreatedAt: String
}

var posts : [Post] = [
    Post(PostURL: "user1_image1", Caption: "See my new game hahahahaah. Hkewjrbgeiofeuabawrygibfi.eayragwbfuibefrgwaiulfedwbelf`rzgfeduebfsuobf`srziyfuheedoufseefau", LikesCount: 97, CreatedAt: "12/05/2021"),
    Post(PostURL: "user1_image2", Caption: "New journey in Expo dubai 123.", LikesCount: 50, CreatedAt: "09/02/2021"),
    Post(PostURL: "user1_image3", Caption: "UAE building in UAE.", LikesCount: 128, CreatedAt: "20/02/2021"),
]




