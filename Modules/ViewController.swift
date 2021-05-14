//
//  ViewController.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 14/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var starsCountLabel: UILabel!
    @IBOutlet weak var reposTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
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



