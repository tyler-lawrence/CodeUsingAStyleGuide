//
//  IconView.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 12/1/23.
//

import SwiftUI

struct IconView: View {
    
    let iconPath: String
    var withBackground: Bool = false
    let size: CGFloat = 50
    
    var shared: some View {
        Image(iconPath)
            .resizable()
            .scaledToFit()            
    }

    var body: some View {

        if withBackground{
            shared
                .colorInvert()
                .iconBackground(.iconBlue)
                .frame(width: size, height: size)
                .padding(.trailing, 22.5)
        } else {
            shared
                .frame(width: size, height: size)
                .padding(.trailing, 22.5)
            
        }
    }
}

#Preview {
    IconView(iconPath: "snowflake", withBackground: true)
}

#Preview {
    IconView(iconPath: "snowflake", withBackground: true)
        .preferredColorScheme(.dark)
}

#Preview {
    IconView(iconPath: "mountain")
}
