//
//  ContentView.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Text("Hello, world!")
           // .padding()
        VStack(alignment: .leading) {
            CheckboxView(isChecked: false, title: "Chocolate")
            CheckboxView(isChecked: false, title: "Coffee")
            CheckboxView(isChecked: false, title: "Fruit")
            CheckboxView(isChecked: false, title: "None of Above")
            List {
                Group {
                Text("Vanilla Ice Cream")
                Text("Chocolate Ice Cream")
                Text("Strawberry Ice Cream")
                Text("Blueberry Sorbert")
                Text("Cherry Garcia")
                Text("Mint Chocolate Chip")
                }
                Group {
                Text("Chocolate Covered Strawberries")
                Text("Coffee Espresso")
                Text("Chocolate Coffee Espresso")
                Text("Chocolate Raspberry Coffee Espresso")
                Text("Vanilla Bean Coffee Espresso")
                }
            }
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
