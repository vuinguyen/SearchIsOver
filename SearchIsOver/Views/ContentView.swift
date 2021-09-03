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
        let flavorList = FlavorViewModel().flavors
        VStack(alignment: .leading) {
            FilterView()
            List(flavorList) { flavor in
                Text(flavor.name)
            }
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
