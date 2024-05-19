//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by jerry tri tjahyono on 19/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
       Text("Hello Word")
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
