//
//  NetworkError.swift
//  MVC-N
//
//  Created by Felix Titov on 6/14/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

enum NetworkError: Error {
    case failInternetError
    case noInternetConnection
}
