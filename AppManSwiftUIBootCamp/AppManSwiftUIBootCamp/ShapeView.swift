//
//  ShapeView.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 05.12.23.
//

import SwiftUI

struct ShapeView: View {
    
    var body: some View {
        
        VStack {
            
            Capsule(style: .circular)
                .frame(width: 100, height: 50)
            /*
            Capsule(style: .continuous)
                .frame(width: 50, height: 50)
            Circle()
                .frame(width:50, height: 50)
            Ellipse()
                .frame(width:50, height: 50)
             */
            Rectangle()
                .frame(width:50, height: 50)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width:50, height: 50)
            /*
            Image("dog")
                .resizable()
                .background(Color.orange)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
             */
            
            /*
            Text("Hello World")
                .border(.red)
                .padding()
             */
            
            // Always better to provide padding first and then provide border color
            Text("My World")
                .padding()
                .border(.green)
                
            // More precise way
            Text("Apple World")
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.blue, lineWidth: 5)
                )
            
            Text("Parallel World")
                .frame(width: 200, height:250, alignment: .center)
                .background(.mint)
                .border(.red)
            
            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(
                                                colors: [.red,.yellow,.red]),
                                    center: .center,
                                    endAngle: .degrees(360)),
                    lineWidth: 30
                )
                .padding()
        }
        .padding()
    }
}

#Preview {
    ShapeView()
}
