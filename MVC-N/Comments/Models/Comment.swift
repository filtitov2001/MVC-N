//
//  Comment.swift
//  MVC-N
//
//  Created by Felix Titov on 6/13/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct Comment {
    
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let postId = dictionary["postId"] as? Int,
              let id = dictionary["id"] as? Int,
              let name = dictionary["name"] as? String,
              let email = dictionary["email"] as? String,
              let body = dictionary["body"] as? String
        else { return nil }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
}
