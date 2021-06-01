//
//  DescriptionPresenter.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 01/06/2021.
//

import Foundation
import UIKit

protocol DescriptionPresenterProtocol {
    var description: String {get}

}

class DescriptionPresenter {
    
    weak var view: DescriptionViewProtocol?
    var repo: Repo
    init(view: DescriptionViewProtocol, repo: Repo) {
        self.view = view
        self.repo = repo
    }
}
extension DescriptionPresenter: DescriptionPresenterProtocol{
    var description: String {
        return repo.name
    }
    
    

}
