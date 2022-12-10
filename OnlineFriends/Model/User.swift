//
//  User.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 10.12.2022.
//

import Foundation


struct User: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
}

class Friend: Codable {
    var id: String
    var name: String
}
