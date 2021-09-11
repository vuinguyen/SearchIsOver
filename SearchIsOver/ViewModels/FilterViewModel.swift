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
    let flavorViewModel = FlavorViewModel()
    @Published var filteredListResults: [FlavorItem]
    var filtersSelected = Set<FlavorFilter>()

    init() {
        filteredListResults = flavorViewModel.allFlavors()
    }

    func chocolateFilterSelected() {
        if filtersSelected.contains(FlavorFilter.chocolate) == false {
            filtersSelected.insert(FlavorFilter.chocolate)
        }
    }

    func coffeeFilterSelected() {

    }

    func fruitFilterSelected() {

    }

    func filterSelected(filterToCheck: FlavorFilter) {
        /*
        if filterSelected.contains(filterToCheck) == false {
            filterSelected.insert(filterToCheck)
        }
 */
        filtersSelected.insert(filterToCheck)
        doFiltering()
    }

    func filterDeselected(filterToCheck: FlavorFilter) {
        // or use Sets?
        /*
        if filterSelected.contains(filterToCheck) {
            filterSelected.remove(filterToCheck)
        }
    */
        filtersSelected.remove(filterToCheck)
        doFiltering()
    }

    func checkFilter(filterToCheck: FlavorFilter, isChecked: Bool) {
        if isChecked {
            filtersSelected.insert(filterToCheck)
        } else {
            filtersSelected.remove(filterToCheck)
        }
        doFiltering()
    }

    func doFiltering(){
        // set list results, which should be a published entity
        // list results should be a subset of all the flavors in the flavorViewModel list that match the
        // filter set criteria
    }

    private func setFilteredList() {
        if filtersSelected.isEmpty {
            filteredListResults = flavorViewModel.allFlavors()
        } else {
            // return results from the flavor array where the tag set == filtersSelected
            filteredListResults = flavorViewModel.flavors.filter{ $0.tags == filtersSelected }
        }
    }
}
