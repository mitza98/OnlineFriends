//
//  HomeViewModel.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 10.12.2022.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var users: [User] = []
    
    func loadData() async {
        
        let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
        
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            if let userData = try? JSONDecoder().decode([User].self, from: data) {
                users = userData
            }
        } catch {
            print(error)
        }
    }
}
