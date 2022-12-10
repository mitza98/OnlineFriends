//
//  User.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 10.12.2022.
//

import Foundation


class User: Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
}

class Friend: Codable {
    var id: String
    var name: String
}
