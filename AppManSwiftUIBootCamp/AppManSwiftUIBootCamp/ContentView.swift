//
//  ContentView.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 04.12.23.
//

// What is View Identity - identity of the view
import SwiftUI

struct ContentView: View {
    // property wrapper - @State tell the state of the property
    @State private var isMessageShown = false
    
    var body : some View {
        VStack {
            if isMessageShown {
                Text("I hope you're enjoying this tutorial")
                    .onAppear {
                        print("Added View To Screen")
                    }
                    .onDisappear {
                        print("Removed View Off Screen")
                    }
            }
            
            Button {
                withAnimation {
                    isMessageShown.toggle()
                }
            } label: {
               Text("Tap to toggle message")
            }
        }
    }
    
}

#Preview {
    ContentView()
}
