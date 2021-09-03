//
//  FilterView.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/3/21.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            CheckboxView(isChecked: false, title: FlavorFilter.chocolate.description)
            CheckboxView(isChecked: false, title: FlavorFilter.coffee.description)
            CheckboxView(isChecked: false, title: FlavorFilter.fruit.description)
            //CheckboxView(isChecked: false, title: "None of the Above")
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
