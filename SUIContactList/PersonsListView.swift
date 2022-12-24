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
        List(persons) { person in
            NavigationLink(destination: InfoView(person: person)) {
                Text(person.fullName)
            }
        }
        .listStyle(.plain)
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.getContactList())
    }
}
