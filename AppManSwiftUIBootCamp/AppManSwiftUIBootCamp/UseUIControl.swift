//
//  UseUIControl.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 05.12.23.
//

import SwiftUI

struct UseUIControl: View {
    var body: some View {
        // All the controls appears on clicking on plus (+) button on right top corner
        Button("Button") {
            
        }
        
        Label("Label", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
        
        Link(destination: URL(string: "www.google.com")!){
            Text("Google")
        }
        
        Menu("Menu") {
            Text("Menu Item 1")
            Text("Menu Item 2")
            Text("Menu Item 3")
        }
        
        VStack {
            Label("Cloudy #1", systemImage:"cloud.sun")
                .imageScale(.small)
            Label("Cloudy #2", systemImage:"cloud.sun")
                .imageScale(.medium)
            Label("Cloudy #3", systemImage:"cloud.sun")
                .imageScale(.large)
        }
        .font(.system(size:20, weight: .bold))
        .foregroundStyle(.blue)
        
        VStack {
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.monochrome)
                .foregroundStyle(.red)
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.multicolor)
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.orange)
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.purple)
        }
        .padding()
        .background(.mint)
        .font(.system(size:30, weight: .bold))
        .symbolVariant(.fill)
        
        
    }
}

#Preview {
    UseUIControl()
}
