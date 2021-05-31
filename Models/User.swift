//
//  User.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation

struct User: Decodable{
    var name: String
    var avatar: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case avatar = "avatar_url"
    }
    
}
