//
//  CheckboxView.swift
//  SearchIsOver
//
//  Created by Vui Nguyen on 9/2/21.
//
//  Credit for checkbox view goes to:
//  https://makeapppie.com/2019/10/16/checkboxes-in-swiftui/

import SwiftUI

struct CheckboxView: View {
    @State var isChecked:Bool = true
    var title:String
    func toggle() {
        isChecked = !isChecked
    }
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                Text(title)
            }
        }
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView(title: "Chocolate")
    }
}
