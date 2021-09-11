//
//  FilterViewModel.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/3/21.
//

import Foundation
import Combine

protocol printEnum {
    var description: String { get }
}

enum FlavorFilter: printEnum {
    case chocolate
    case coffee
    case fruit

    var description: String {
        switch self {
        case .chocolate:
            return "Chocolate"
        case .coffee:
            return "Coffee"
        case .fruit:
            return "Fruit"
        }
    }
}

class FilterViewModel: ObservableObject {
    @Published var filteredListResults: [FlavorItem]
    let flavorViewModel = FlavorViewModel()
    var filtersSelected = Set<FlavorFilter>()

    init() {
        filteredListResults = flavorViewModel.allFlavors()
    }

    func checkFilter(filterToCheck: FlavorFilter, isChecked: Bool) {
        if isChecked {
            filtersSelected.insert(filterToCheck)
        } else {
            filtersSelected.remove(filterToCheck)
        }
        setFilteredList()
    }

    private func setFilteredList() {
        if filtersSelected.isEmpty {
            filteredListResults = flavorViewModel.allFlavors()
        } else {
            // set list results, which should be a published entity
            // list results should be a subset of all the flavors in the flavorViewModel list that match the
            // filter set criteria
            //filteredListResults = flavorViewModel.flavors.filter { $0.tags == filtersSelected }
            filteredListResults = flavorViewModel.flavors.filter { $0.tags.isSuperset(of: filtersSelected) }
        }
    }
}
