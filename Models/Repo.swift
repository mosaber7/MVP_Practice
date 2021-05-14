//
//  Repo.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation

struct Repo:Decodable{
    var name: String
    var forksCount: Int
    
    enum codingKeys:String, CodingKey{
        case name
        case forksCount = "forks_count"
    }
}
