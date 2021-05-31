//
//  Repo.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation

struct Repo:Decodable{
    var name: String
    var starsCount: Int
    
    enum CodingKeys:String, CodingKey{
        case name
        case starsCount = "stargazers_count"
    }
}
