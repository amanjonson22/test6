//
//  FriendList.swift
//  test6
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 05/02/25.
//

import Foundation
import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context

    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
