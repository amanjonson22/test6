//
//  ContentView.swift
//  test6
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            FriendList()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
