//
//  DataManager.swift
//  SUIContactList
//
//  Created by Руслан Шигапов on 24.12.2022.
//

class DataManager {
    static let shared = DataManager()
    
    private init() {}

    let names = ["John", "Sharon", "Aaron", "Steven", "Nicola", "Ted"]
    
    let surnames = ["Snow", "Stone", "Paul", "King", "Tesla", "Williams"]
    
    let phoneNumbers = ["112233", "223344", "334455", "445566", "556677", "667788"]
    
    let emails = [
        "aaaa@gmail.com",
        "bbbb@gmail.com",
        "cccc@gmail.com",
        "dddd@gmail.com",
        "eeee@gmail.com",
        "ffff@gmail.com"
    ]
}
