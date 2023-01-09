//
//  PersonsListView.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

import SwiftUI

struct PersonsListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(
                    person.fullName,
                    destination: InfoView(person: person)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.getContactList())
    }
}
