//
//  ProfileViewController.swift
//  TableView
//
//  Created by Olegio on 21.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileName: UILabel!
    @IBOutlet var profileAge: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.image = user.image
        profileName.text = user.name
        profileAge.text = user.age
    }
}
