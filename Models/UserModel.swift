//
//  UserModel.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 26/04/2022.
//

import Foundation

struct User {
    var Name: String
    var Email: String
    var ProfileImageUrl: String
    var ProfilePublicID: String
}

var firstUser: User = User(Name: "Jackie", Email: "jackie@gmail.com", ProfileImageUrl: "user1_profile", ProfilePublicID: "#abc")
