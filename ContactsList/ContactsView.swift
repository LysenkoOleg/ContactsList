//
//  ContactsView.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
            VStack {
                List(persons, id: \.self) { person in
                    NavigationLink(destination: ContactInformation(person: person)) {
                        PersonRow(person: person)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contacts List")
            .padding()
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContacts())
    }
}
