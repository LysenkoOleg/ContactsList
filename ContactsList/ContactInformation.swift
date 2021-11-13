//
//  ContactInformation.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import SwiftUI

struct ContactInformation: View {
    let person: Person
    
    var body: some View {
        VStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                    .frame(width: 120, height: 120)
                    Spacer()
                }
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("\(person.phones)")
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text("\(person.email)")
                    }
            }
        }
        .navigationTitle("\(person.fullName)")
        .listStyle(.grouped)
    }
}

struct ContactInformation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(person: Person.getContact())
    }
}
