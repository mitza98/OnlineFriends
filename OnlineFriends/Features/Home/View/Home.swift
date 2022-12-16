//
//  ContentView.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 10.12.2022.
//

import SwiftUI


struct Home: View {
    @StateObject var results = HomeViewModel()

    var body: some View {
        NavigationView {
            List(results.users) { result in
                    NavigationLink {
                        UserDetailView(user: result)
                    } label: {
                        HStack {
                            result.status
                            Text("\(result.name)")
                        }
                        
                    }
            }
            .task {
                await results.loadData()
            }
        }
        .navigationTitle("Home")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
