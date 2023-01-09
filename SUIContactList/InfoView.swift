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
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(person: Person.getContactList().first!)
    }
}
