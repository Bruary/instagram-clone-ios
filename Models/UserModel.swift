//
//  UserModel.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 26/04/2022.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var Name: String
    var Email: String
    var ProfileImageUrl: String
    var ProfilePublicID: String
}

var users: [User] = [
    User(Name: "Jackie", Email: "jackie@gmail.com", ProfileImageUrl: "user1_profile", ProfilePublicID: "#abc"),
    User(Name: "Richard", Email: "richard@gmail.com", ProfileImageUrl: "user2_profile", ProfilePublicID: "#cdb"),
    User(Name: "Frank", Email: "frank@gmail.com", ProfileImageUrl: "user3_profile", ProfilePublicID: "#cdf")
    
]

var firstUser: User = User(Name: "Jackie", Email: "jackie@gmail.com", ProfileImageUrl: "user1_profile", ProfilePublicID: "#abc")
