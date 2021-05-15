//
//  ViewController.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import UIKit

class HomeViewControlle: UIViewController {

    var repos: [Repo] = [Repo]()
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var starsCountLabel: UILabel!
    @IBOutlet weak var reposTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerRepoCell()
        
        let rer = UserRequest()
        rer.retrieveUserInfo { (response) in
            switch response{
            
            case .success(let info):
                print(info)
            case .failure(let error):
                print(error)
            }
        }
    }


}

//MARK: -
extension HomeViewControlle{
    private func registerRepoCell(){
        let repoNib = UINib(nibName: "repoCell", bundle: nil)
        
        reposTableView.register(repoNib, forCellReuseIdentifier: "repoCell")
        
    }
}

extension HomeViewControlle: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = reposTableView.dequeueReusableCell(withIdentifier: "repoCell") as! repoCell
        return cell
    }
    
    
}

