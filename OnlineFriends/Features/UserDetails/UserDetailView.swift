//
//  UserDetailView.swift
//  OnlineFriends
//
//  Created by Mihai Cerneanu on 16.12.2022.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Info")) {
                        Text(user.name)
                            .font(.title)
                        Text("registration date: \(formatDate(date: user.registered), style: .date)")
                            .font(.caption2)
                            .fontWeight(.light)
                    }
                }
                .frame(height: 150, alignment: .center)
                    Spacer()
                    Form {
                        Section(header: Text("User details")) {
                            List {
                                Text("age:\(user.age)")
                                Text("email:\(user.email)")
                                Text("address: \(user.address)")
                                Text("company: \(user.company)")
                            }
                            DisclosureGroup("tags") {
                                List (user.tags, id: \.self) { tag in
                                    withAnimation {
                                        Text(tag)
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                
            }
        }
        .navigationTitle("User Details")
    }
    
    func formatDate(date: String) -> Date {
        let dateFormatter = ISO8601DateFormatter()
        let formattedDate = dateFormatter.date(from: date)

        return formattedDate.unsafelyUnwrapped
        
    }
}

