//
//  usersRequest.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation
import Alamofire

class UserRequest{

   static func retrieveUserInfo(_ compeletion: @escaping (Result<User, AFError>)-> Void){
    let route = userRouter.usersInfo
    
    AF.request(route).responseDecodable { (response: DataResponse<User, AFError>) in
        switch response.result{
        
        case .success(let user):
            compeletion(.success(user))
        case .failure(let error):
            compeletion(.failure(error))
        }
    }
}
    
 static func retrieveRepos(_ compeletion: @escaping (Result<[Repo],AFError>)->Void){
        let reposRoute = userRouter.userRepos
        
        AF.request(reposRoute).responseDecodable { (response: DataResponse<[Repo], AFError>) in
            
            switch response.result{
            
            case .success(let repos):
                compeletion(.success(repos))
            case .failure(let error):
                print(error)
                compeletion(.failure(error))
            }
        }
        
    }
    
}
