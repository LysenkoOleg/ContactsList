//
//  Person.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phones: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> Person {
        let person = Person(
            name: "Name",
            surname: "Surname",
            phones: "Phones",
            email: "Email"
        )
        return person
    }
}

extension Person {
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phones: phones[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}
