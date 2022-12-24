//
//  Person.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                id: index,
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
    static func getPerson() -> Person {
        let name = DataManager.shared.names.shuffled()
        let surname = DataManager.shared.surnames.shuffled()
        let phoneNumber = DataManager.shared.phoneNumbers.shuffled()
        let email = DataManager.shared.emails.shuffled()
        
        return Person(
            id: 0,
            name: name.first ?? "",
            surname: surname.first ?? "",
            phoneNumber: phoneNumber.first ?? "",
            email: email.first ?? ""
        )
    }
}

