//
//  NetworkService.swift
//  MVC-N
//
//  Created by Felix Titov on 6/13/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    private init() {}
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
        
    }
}
