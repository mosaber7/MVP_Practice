//
//  HomeRoutes.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 01/06/2021.
//

import Foundation
import UIKit

enum HomeRoutes: Route {
    case description(Repo)

    
    var destination: UIViewController{
        switch self {
        
        case .description(let repo):
            let descriptionVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Description") as! DescriptionViewController
            descriptionVC.presenter = DescriptionPresenter(view: descriptionVC, repo: repo)
            return descriptionVC
            
            
        }
        
    }
    
    var presentationStyle: NavigationStyle{
        switch self {
        
        case .description(_):
            return .modal
        }
    
    }
}
