//
//  DetailedListView.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

import SwiftUI

struct DetailedListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct DetailedListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedListView(persons: Person.getContactList())
    }
}
