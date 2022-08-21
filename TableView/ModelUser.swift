//
//  ModelUser.swift
//  TableView
//
//  Created by Olegio on 21.08.2022.
//

import Foundation
import UIKit

class ModelUser {
    var users = [[User]]()
    
    init() {
        setupUsers()
    }
    
    func setupUsers() {
        let man1 = User(name: "Николай Наумов", age: "32 года", image: UIImage(named: "male1")!, gender: .male)
        let man2 = User(name: "Сергей Столешников", age: "45 лет", image: UIImage(named: "male2")!, gender: .male)
        let man3 = User(name: "Александр Николаевич", age: "24 года", image: UIImage(named: "male3")!, gender: .male)
        let man4 = User(name: "Виктор Александрович", age: "50 лет", image: UIImage(named: "male4")!, gender: .male)
        let man5 = User(name: "Василий Уткин", age: "18 лет", image: UIImage(named: "male5")!, gender: .male)
        
        let mansArray = [man1, man2, man3, man4, man5]
        
        let woman1 = User(name: "Виктория Александровна", age: "18 лет", image: UIImage(named: "female1")!, gender: .female)
        let woman2 = User(name: "Анастасия Сидорова", age: "23 года", image: UIImage(named: "female2")!, gender: .female)
        let woman3 = User(name: "Ксения Заворотнюк", age: "28 лет", image: UIImage(named: "female3")!, gender: .female)
        let woman4 = User(name: "Дарья Колесникова", age: "35 лет", image: UIImage(named: "female4")!, gender: .female)
        let woman5 = User(name: "Алина Можева", age: "21 год", image: UIImage(named: "female5")!, gender: .female)
        
        let womansArray = [woman1, woman2, woman3, woman4, woman5]
        
        users.append(mansArray)
        users.append(womansArray)
    }
}
