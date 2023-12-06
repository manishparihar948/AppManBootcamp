//
//  StateView.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 06.12.23.
//

import SwiftUI

// property wrapper
// @Binding is the property which has connections between parent and child
struct StateView: View {
    
    @State private var isOn : Bool = false
    
    var body: some View {
        VStack {
            /*
            Text(isOn ? "Switch is On" : "Switch is Off")
            
            Button{
                isOn.toggle()
            } label: {
                Text("Toggle Me")
            }
             */
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .black)
            Toggle(isOn: $isOn) {
                Text("Toggle light switch")
            }.labelsHidden()
        }
    }
}

#Preview {
    StateView()
}
