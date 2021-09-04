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
    var filterSelected = Set<FlavorFilter>()

    func chocolateFilterSelected() {
        if filterSelected.contains(FlavorFilter.chocolate) == false {
            filterSelected.insert(FlavorFilter.chocolate)
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
        filterSelected.insert(filterToCheck)
        doFiltering()
    }

    func filterDeselected(filterToCheck: FlavorFilter) {
        // or use Sets?
        /*
        if filterSelected.contains(filterToCheck) {
            filterSelected.remove(filterToCheck)
        }
    */
        filterSelected.remove(filterToCheck)
        doFiltering()
    }

    func doFiltering(){

    }
}
