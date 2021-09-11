//
//  IceCreamViewModel.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/2/21.
//

import Foundation

// Note: Hashable is needed in order to make a Set of FlavorItem
struct FlavorItem: Identifiable, Hashable {
    var id: Int
    var name: String
    var tags: [String] // this can be an array of enums later
}

class FlavorViewModel {
    let flavors: [FlavorItem] = [
        FlavorItem(id: 0, name: "Vanilla", tags: []),
        FlavorItem(id: 1, name: "Chocolate", tags: []),
        FlavorItem(id: 2, name: "Strawberry", tags: []),
        FlavorItem(id: 3, name: "Blueberry", tags: []),
        FlavorItem(id: 4, name: "Cherry Garcia", tags: []),
        FlavorItem(id: 5, name: "Mint Chocolate Chip", tags: []),
        FlavorItem(id: 6, name: "Chocolate Covered Strawberries", tags: []),
        FlavorItem(id: 7, name: "Coffee Espresso", tags: []),
        FlavorItem(id: 8, name: "Chocolate Coffee Espresso", tags: []),
        FlavorItem(id: 9, name: "Chocolate Raspberry Coffee Espresso", tags: []),
        FlavorItem(id: 10, name: "Vanilla Bean Coffee Espresso", tags: []),
        FlavorItem(id: 11, name: "Lemoncello", tags: [])
    ]

    let allFlavorsSet: Set<FlavorItem> = [
        FlavorItem(id: 0, name: "Vanilla", tags: []),
        FlavorItem(id: 1, name: "Chocolate", tags: []),
        FlavorItem(id: 2, name: "Strawberry", tags: []),
        FlavorItem(id: 3, name: "Blueberry", tags: []),
        FlavorItem(id: 4, name: "Cherry Garcia", tags: []),
        FlavorItem(id: 5, name: "Mint Chocolate Chip", tags: []),
        FlavorItem(id: 6, name: "Chocolate Covered Strawberries", tags: []),
        FlavorItem(id: 7, name: "Coffee Espresso", tags: []),
        FlavorItem(id: 8, name: "Chocolate Coffee Espresso", tags: []),
        FlavorItem(id: 9, name: "Chocolate Raspberry Coffee Espresso", tags: []),
        FlavorItem(id: 10, name: "Vanilla Bean Coffee Espresso", tags: []),
        FlavorItem(id: 11, name: "Lemoncello", tags: [])
    ]

    func allFlavorsFromSet() -> [FlavorItem] {
        return Array(allFlavorsSet)
    }

    func allFlavors() -> [FlavorItem] {
        return flavors
    }
}
