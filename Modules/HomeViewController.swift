//
//  ViewController.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import UIKit

protocol HomeViewProtocol: AnyObject{
    func reloadTableView()
    
}

class HomeViewControlle: UIViewController {

    @IBOutlet private weak var ImageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var reposTableView: UITableView!
    
    var presenter: HomePresenterProtocol?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        registerRepoCell()
        presenter = HomePresenter(view: self)
configLabels()
        
    }
}

//MARK: - table view setup
extension HomeViewControlle{
    private func registerRepoCell(){
        let repoNib = UINib(nibName: "repoCell", bundle: nil)
        reposTableView.register(repoNib, forCellReuseIdentifier: "repoCell")
        
    }
    func configLabels(){
        nameLabel.text = presenter?.userName

    }
}

extension HomeViewControlle: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.reposCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = reposTableView.dequeueReusableCell(withIdentifier: "repoCell") as! repoCell
        let repo = presenter?.repo(at: indexPath.row)
        cell.configureCell(with: repo!)
        
        return cell
    }
}

// MARK: -

extension HomeViewControlle: HomeViewProtocol{
    
    func reloadTableView() {
        self.reposTableView.reloadData()
    }
    
}

