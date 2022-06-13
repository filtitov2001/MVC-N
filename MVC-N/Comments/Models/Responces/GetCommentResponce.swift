//
//  GetCommentResponce.swift
//  MVC-N
//
//  Created by Felix Titov on 6/14/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct GetCommentResponse {
    typealias JSON = [[String: AnyObject]]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? JSON else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        
        for dictionary in array {
            guard let comment = Comment(dictionary: dictionary) else { continue }
            comments.append(comment)
        }
        
        self.comments = comments
    }
}
