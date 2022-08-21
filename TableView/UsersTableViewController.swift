//
//  UsersTableViewController.swift
//  TableView
//
//  Created by Olegio on 21.08.2022.
//

import UIKit

class UsersTableViewController: UITableViewController {

    let cellId = "UserTableViewCell"
    var modelUser = ModelUser()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return modelUser.users.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelUser.users[section]
        return section.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! UserTableViewCell

        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
        cell.userName.text = user.name
        cell.userAge.text = user.age
        cell.userImage.image = user.image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Мужчины"
        } else {
            return "Женщины"
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
        let alert = UIAlertController(title: user.name, message: user.age, preferredStyle: .actionSheet)
        
        let profileAction = UIAlertAction(title: "Профиль", style: .default) { (alert) in
            self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
        }
        
        let deleteAction = UIAlertAction(title: "Удалить из друзей", style: .destructive) { (alert) in
            self.modelUser.users[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        
        alert.addAction(profileAction)
        alert.addAction(deleteAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToProfile" else { return }
        let profileVC = segue.destination as! ProfileViewController
        
        let indexPath = sender as! IndexPath
        
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        
        profileVC.user = user
    }
}
