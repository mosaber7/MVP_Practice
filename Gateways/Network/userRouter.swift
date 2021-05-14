//
//  usersRouter.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation
import Alamofire


enum userRouter: URLRequestConvertible{
    
    
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
    var httpMethod: HTTPMethod {
        switch self {
        case .usersInfo:
            return .get
        case .userRepos:
            return .get
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
    var encoding: ParameterEncoding{
        switch self {
        case .userRepos:
            return JSONEncoding.default
        case .usersInfo:
            return JSONEncoding.default
        }
    }
    
    func asURLRequest()throws -> URLRequest{
        let urlstring = userRouter.userBaseURL + self.path
        
        let url = URL(string: urlstring)!
        var request = URLRequest(url: url)
        request.method = self.httpMethod
        request.headers = HTTPHeaders(headers)
        
        return try! encoding.encode(request, with: parameters)
        
        
    }
    
    
}
