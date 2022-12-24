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
        List(persons) { person in
            Section(person.fullName) {
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text(person.phoneNumber)
                }
                HStack {
                    Image(systemName: "tray")
                        .foregroundColor(.blue)
                    Text(person.email)
                }
            }
        }
        .listStyle(.plain)
    }
}

struct DetailedListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedListView(persons: Person.getContactList())
    }
}
