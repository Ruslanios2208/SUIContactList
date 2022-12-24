//
//  ContentView.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            TabView {
                PersonsListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                DetailedListView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
