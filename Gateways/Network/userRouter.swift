//
//  usersRouter.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation


enum userRouter{
    static let userBaseURL = "https://api.github.com/users/KarimEbrahemAbdelaziz"
    
    case usersInfo
    case userRepos
    
    var path: String{
        switch self {
        case .usersInfo:
            return ""
        case .userRepos:
            return "repos"
        }
    }
    
    var parameters : [String: Any]?{
        switch self {
        case .usersInfo:
            return nil
        case .userRepos:
            return nil
        }
    }
    
    var headers: [String: String]{
        switch self {
        case .usersInfo:
            return [:]
        case .userRepos:
            return [:]
        }
    }
    
    
}
