//
//  NumbersView.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        VStack {
            List(persons, id: \.self) { person in
                Section(header: Text("\(person.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.phones)")
                                .frame(height: 30)
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                                .frame(height: 30)
                        }
                }
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContacts())
    }
}
