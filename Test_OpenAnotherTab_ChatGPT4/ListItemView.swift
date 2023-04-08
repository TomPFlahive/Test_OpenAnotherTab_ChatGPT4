//
//  ListItemView.swift
//  Test_OpenAnotherTab_ChatGPT4
//
//  Created by Tom Flahive on 4/8/23.
//

import SwiftUI

struct ListItemView: View {
    @Binding var selectedItem: Item?
    @Binding var selectedTab: Int
    let item: Item

    var body: some View {
        HStack {
            Text(item.title)
            Spacer()
            Button(action: {
                selectedItem = item
                selectedTab = 1 // Switch to the second tab
            }, label: {
                Text("Open")
            })
        }
    }
}
