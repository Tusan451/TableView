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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelUser.users.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! UserTableViewCell

        let user = modelUser.users[indexPath.row]
        
        cell.userName.text = user.name
        cell.userAge.text = user.age
        cell.userImage.image = user.image

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}