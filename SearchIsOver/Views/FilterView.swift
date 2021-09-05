//
//  FilterView.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/3/21.
//

import SwiftUI

struct FilterView: View {
    @EnvironmentObject var filterViewModel: FilterViewModel
    var body: some View {
        VStack(alignment: .leading) {
            CheckboxView(flavorFilter: FlavorFilter.chocolate)
            CheckboxView(flavorFilter: FlavorFilter.coffee)
            CheckboxView(flavorFilter: FlavorFilter.fruit)
            //CheckboxView(isChecked: false, title: "None of the Above")
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
