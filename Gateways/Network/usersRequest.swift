//
//  usersRequest.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import Foundation
import Alamofire

func retrieveUserInfo(){
    let route = userRouter.usersInfo
    
    AF.request(route)
}
