//
//  Route.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 31/05/2021.
//

import Foundation
import UIKit

protocol Route {
    var destination: UIViewController{get}
    var presentationStyle: NavigationStyle{get}
}

enum NavigationStyle {
    case modal
    case push
    
    
    
}

