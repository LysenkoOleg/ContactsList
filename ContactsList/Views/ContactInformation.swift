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
                        .padding()
                    Spacer()
                }
                
                Label(person.phones, systemImage: "phone")
                Label(person.email, systemImage: "tray")
                
            }
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct ContactInformation_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(person: Person.getContact())
    }
}
