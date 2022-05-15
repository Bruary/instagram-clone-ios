//
//  CommentModel.swift
//  instagram-clone-ios
//
//  Created by Abubakir  Kais on 23/04/2022.
//

import Foundation

struct Comment: Identifiable {
    var id: UUID
    var UserID: Int
    var CommentString: String
    var LikesCount: Int
    var ParentID: Int
    var PostID: Int
    var CreatedAt: String
}

var comments: [Comment] = [
    Comment(id: UUID(), UserID: 0, CommentString: "This looks amazing, I remember when I visisted it it was so bad back then, its so good to see the development that took place", LikesCount: 5, ParentID: 1, PostID: 1, CreatedAt: "2022/04/01"),
    Comment(id: UUID(),UserID: 1, CommentString: "We agree to disagree, I hate you noob ahahaha", LikesCount: 2, ParentID: 2, PostID: 2, CreatedAt: "2022/04/02"),
    Comment(id: UUID(),UserID: 2, CommentString: "How is this picture real? 100% fake", LikesCount: 5, ParentID: 1, PostID: 1, CreatedAt: "2022/04/03"),
    Comment(id: UUID(),UserID: 3, CommentString: "I dont like you!", LikesCount: 5, ParentID: 1, PostID: 1, CreatedAt: "2022/04/03"),
    Comment(id: UUID(),UserID: 4, CommentString: "Okay when did this happen?", LikesCount: 5, ParentID: 1, PostID: 1, CreatedAt: "2022/04/04"),
]
