//
//  User.swift
//  Instagram-UI-Redesign
//
//  Created by Daniel Spalek on 01/08/2022.
//

import Foundation


struct User: Identifiable {
    let id: String = UUID().uuidString
    var username: String
    var image: String = "pfp4"
}

let sampleUsers: [User] = [
    User(username: "real.giancarlo", image: "pfp1"),
    User(username: "kingjames", image: "pfp2"),
    User(username: "zuck", image: "pfp3"),
    User(username: "newuser19", image: "pfp4"),
    User(username: "stevejobs", image: "pfp5")
]
