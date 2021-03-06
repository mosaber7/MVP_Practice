//
//  RepoTableViewCell.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 15/05/2021.
//

import UIKit

class repoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(with repo: Repo){
        self.nameLabel.text = "Repo Name: \(repo.name)"
        self.forkCountLabel.text = "stars Count \(repo.starsCount)"
    }
    
    
}
