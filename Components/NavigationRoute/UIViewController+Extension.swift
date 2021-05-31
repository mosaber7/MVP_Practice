//
//  UIViewController+Extension.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 31/05/2021.
//

import Foundation
import UIKit

protocol NavigationRouter {
    func navigate(to route: Route)
}

extension UIViewController:NavigationRouter{
    
    
    func navigate(to route: Route) {
        switch route.presentationStyle {
        case .modal:
            self.present(route.destination, animated: true, completion: nil)
        case .push:
            self.navigationController?.pushViewController(route.destination, animated: true)
        }
    }
    
    
}
