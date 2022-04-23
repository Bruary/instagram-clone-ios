//
//  CommentModel.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 23/04/2022.
//

import Foundation

struct Comment {
    var UserID: Int
    var CommentString: String
    var LikesCount: Int
    var ParentID: Int
    var PostID
    var CreatedAt: String
}
