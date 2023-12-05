//
//  Image.swift
//  AppManSwiftUIBootCamp
//
//  Created by Manish Parihar on 05.12.23.
//

import SwiftUI

struct ColorAndImageShow: View {
    var body: some View {
       // How to use .png and .svg image in xcode project
        VStack {
            Image("dog")
                .resizable()
                .frame(width: 100, height: 100)
                .border(.cyan)

            Divider()
            
            // How to call .svg in project
            // Drag into assets folder then change the property from file inspector
            // Change Scale from individual to Single Scale
            Image("christmas")
                .resizable()
                .frame(width: 300, height: 200)
                .border(.pink)
                .background(Color("secondaryColor"))

            
            Text("Hello My Color")
                .padding()
                .foregroundStyle(.accent)
            
            Text("Show my custom color")
                .foregroundStyle(Color.myAccent)
            
            /*
               Also we can choose colors from asset folder
               1. Add colors to assets folder
               2. Then click plus button on right top cornor
               3. Select color pallate from top icons and Drag to View 
            */
            
            Text("Show Two different color")
                .foregroundStyle(Color("primaryColor"))

            Text("Show in Dark mode color")
                .foregroundStyle(Color("secondaryColor"))
        }
    }
}

#Preview {
    ColorAndImageShow()
}
