//
//  Item.swift
//  Test_OpenAnotherTab_ChatGPT4
//
//  Created by Tom Flahive on 4/8/23.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var title: String
    var content: String
}
