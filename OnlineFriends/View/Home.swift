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
        VStack {
            List(results.users) {result in
                Text(result.name)
            }
            .task {
                await results.loadData()
            }
        }
        .task {
            await results.loadData()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
