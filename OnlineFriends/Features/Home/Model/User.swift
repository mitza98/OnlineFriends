//
//  User.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 10.12.2022.
//

import Foundation
import SwiftUI

struct User: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let age: Int
    let company, email, address, about: String
    let registered: String
    let tags: [String]
    let friends: [Friend]
    
}

class Friend: Codable, Identifiable {
    var id: String
    var name: String
}



extension User {
    
    var status: some View {
        switch isActive {
        case true :
            return Circle()
                .foregroundColor(.green)
                .frame(width: 30, height: 30)
                .scaledToFit()
        case false:
            return Circle()
                .foregroundColor(.gray)
                .frame(width: 30, height: 30)
                .scaledToFit()
        }
    }
}
