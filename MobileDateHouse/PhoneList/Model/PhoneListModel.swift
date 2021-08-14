//
//  PhoneListModel.swift
//  MobileDateHouse
//
//  Created by Ivan on 14.08.2021.
//

import Foundation

struct Contact {
    var fullName: String
    var number: Int
}

protocol PhoneListModelProtocol {
    var allContacts: [Contact] { get }
}

final class PhoneListModel: PhoneListModelProtocol {
    
    
    // MARK: - Public Properties
    
    public var allContacts: [Contact] = []
    
    // MARK: - Init
    
    init() {
        setupContacts()
    }
    
    // MARK: - Private Methods
    
    private func setupContacts() {
        allContacts = [
            Contact(fullName: "Иван Иванов", number: 1)
        ]
    }
}
