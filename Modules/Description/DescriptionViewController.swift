//
//  DescriptionViewController.swift
//  GitHubUsersProject_MVP
//
//  Created by Saber on 01/06/2021.
//

import UIKit

protocol DescriptionViewProtocol: AnyObject {
}

class DescriptionViewController: UIViewController {

    var presenter: DescriptionPresenterProtocol?
    @IBOutlet weak var descritionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.descritionLabel.text = presenter?.description

    }
    
}
extension DescriptionViewController: DescriptionViewProtocol{
    
    
    
}
