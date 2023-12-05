//
//  ViewDependencies.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 05.12.23.
//

import SwiftUI

struct ViewDependencies: View {
    
    @State private var isOpen = false
    var body: some View {
        let _ = Self._printChanges()

        VStack {
            ViewDependenciesArrow(isOpen: $isOpen)
            Button {
                withAnimation {
                    isOpen.toggle()
                }
            } label: {
                Text("Toggle Arrow")
            }
        }
        .padding()
    }
    
    
}

#Preview {
    ViewDependencies()
}

struct ViewDependenciesArrow: View {
    @Binding var isOpen: Bool
    
    var body: some View {
        Image(systemName: "arrow.down")
            .rotationEffect(.init(degrees: isOpen ? 0 : -180))
    }
}
