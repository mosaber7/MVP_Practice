//
//  HomePresenter.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 31/05/2021.
//

import Foundation

protocol HomePresenterProtocol {
    var reposCount: Int {get}
    var userName: String {get}
    func repo(at index: Int)-> Repo
    func retrieveRepos()
    func retrieveUser()
    
}

class HomePresenter:HomePresenterProtocol{
    var userName: String{
        if let user = user {
            return user.name
        }
        return "Errror"
        
    }
    
    

    weak var view: HomeViewProtocol?
    
    init(view: HomeViewProtocol) {
        self.view = view
        retrieveRepos()
        retrieveUser()
    }
    
    var repos = [Repo]()
    var user: User?
    
    var reposCount: Int{
        return repos.count
    }
    
    func repo(at index: Int) -> Repo {
        return repos[index]
    }
    
    func retrieveRepos() {
        UserRequest.retrieveRepos { (result) in
            switch result{
            case .success(let repos):
                self.repos = repos
                self.view?.reloadTableView()
            case .failure(let error):
                fatalError("fetching error : \(error)")
            }
        }
    }
    
    func retrieveUser() {
        UserRequest.retrieveUserInfo { (result) in
            switch result{
            case .success(let user):
                self.user = user
            case .failure(let error):
                fatalError("error fetching user data \(error)")
            }
        }
    }
    
    
    }
    
    
    
  
    

