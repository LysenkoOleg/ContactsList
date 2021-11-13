//
//  ContentView.swift
//  ContactsList
//
//  Created by Олег Лысенко on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContacts()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                NumbersView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
