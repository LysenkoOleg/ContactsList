//
//  PersonRow.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text("\(person.fullName)")
                .frame(height: 30, alignment: .leading)
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getContact())
    }
}
