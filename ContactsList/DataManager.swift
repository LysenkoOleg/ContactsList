//
//  DataManager.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    let names = [
        "Bruce", "Sharon", "Carl", "Allan", "Nicola",
        "Steven", "Ted", "Aaron", "Tim", "James"
    ]
    
    let surnames = [
        "Black", "Smith", "Butler", "Dow", "Pennyworth",
        "Willams", "Jankin", "Robertson", "Murphy", "Barret"
    ]
    
    let phones = [
    "123-789-564", "723-433-456", "847-365-481", "333-564-674", "984-039-593",
    "473-964-253", "483-594-059", "263-476-234", "758-948-009", "921-093-222"
    ]
    
    let emails = [
    "aaa@mail.ru", "hhh@mail.ru", "ddd@mail.ru", "zzz@mail.ru", "lll@mail.ru",
    "eee@mail.ru", "rrr@mail.ru", "uuu@mail.ru", "ppp@mail.ru", "kkk@mail.ru"
    ]
}
