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
    var avatarURL: URL{get}
    func repo(at index: Int)-> Repo
    func retrieveRepos()
    func retrieveUser()
    
}

class HomePresenter:HomePresenterProtocol{

    weak var view: HomeViewProtocol?
    
    init(view: HomeViewProtocol) {
        self.view = view
        retrieveRepos()
        retrieveUser()
    }
    
    var repos = [Repo]()
    var user: User!
    var avatarURL: URL{
        URL(string: user.avatar)!
    }
    
    var reposCount: Int{
        return repos.count
    }
    var userName: String{
        user.name
        
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
                self.view?.setupUserData()
            case .failure(let error):
                fatalError("error fetching user data \(error)")
            }
        }
    }
    
    
    }
    
    
    
  
    

