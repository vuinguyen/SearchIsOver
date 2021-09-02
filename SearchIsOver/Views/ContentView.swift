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
            CheckboxView(isChecked: false, title: "Fruit")
            List {
                Text("Vanilla Ice Cream")
                Text("Chocolate Ice Cream")
                Text("Strawberry Ice Cream")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
