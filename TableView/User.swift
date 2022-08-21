//
//  User.swift
//  TableView
//
//  Created by Olegio on 21.08.2022.
//

import Foundation
import UIKit

enum Gender {
    case male
    case female
}

class User: NSObject {
    var name: String
    var age: String
    var image: UIImage
    var gender: Gender
    
    init(name: String, age: String, image: UIImage, gender: Gender) {
        self.name = name
        self.age = age
        self.image = image
        self.gender = gender
    }
}
