//
//  InfoView.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

import SwiftUI

struct InfoView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
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
        .navigationTitle(person.fullName)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(person: Person.getPerson())
    }
}
