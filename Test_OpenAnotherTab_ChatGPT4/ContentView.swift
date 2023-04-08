//
//  ContentView.swift
//  Test_OpenAnotherTab_ChatGPT4
//
//  Created by Tom Flahive on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var selectedItem: Item?

    private let items = [
        Item(title: "Item 1", content: "This is the content of Item 1."),
        Item(title: "Item 2", content: "This is the content of Item 2."),
        Item(title: "Item 3", content: "This is the content of Item 3."),
    ]

    var body: some View {
        TabView(selection: $selectedTab) {
            VStack {
                List(items) { item in
                    ListItemView(selectedItem: $selectedItem, selectedTab: $selectedTab, item: item)
                }
            }
            .tabItem {
                Label("Items", systemImage: "list.bullet")
            }
            .tag(0)

            VStack {
                if let selectedItem = selectedItem {
                    Text(selectedItem.content)
                } else {
                    Text("Select an item from the first tab.")
                }
            }
            .tabItem {
                Label("Details", systemImage: "info.circle")
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
