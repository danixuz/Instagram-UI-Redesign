//
//  Post.swift
//  Instagram-UI-Redesign
//
//  Created by Daniel Spalek on 01/08/2022.
//

import Foundation

struct Post: Identifiable {
    let id: String = UUID().uuidString
    
    var user: User
    var image: String
    var timeAgo: String = "1 min"
    var likeCount: Int = 0
    var commentCount: Int = 0
}

var samplePosts: [Post] = [
    Post(user: sampleUsers[0], image: "post1", timeAgo: "6 min", likeCount: 3214, commentCount: 231),
    Post(user: sampleUsers[1], image: "post2", timeAgo: "40 min", likeCount: 323, commentCount: 34)
]
