//
//  FeatureRowView.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 11/29/23.
//

import SwiftUI

struct FeatureRowView: View {
    
    let title: String
    let copy: String
    let iconPath: String // asset in style guide
    
    var body: some View {
        HStack{
            
            IconView(iconPath: iconPath, withBackground: true)
        
            VStack(alignment: .leading){
                Text(title.uppercased())
                    .font(Font.customFont(font: .helvetica, size: .h2))
                    .fontWeight(.bold)
                    .offset(x: -5)
                Text(copy)
                    .font(Font.customFont(font: .helvetica, size: .h3))
                    .fontWeight(.light)
            }
            .foregroundStyle(Color.text)
            
            Spacer()
        }
        .padding(.bottom, 15)
        .padding(.horizontal, 22.5)
    }
}

#Preview {
    FeatureRowView(title: "Legendary Snow", copy: "More than 400” annual snowfall. More than 400” anasdfasdfasdfasdfnual snowfall", iconPath: "snowflake")
}

#Preview {
    FeatureRowView(title: "Legendary Snow", copy: "More than 400", iconPath: "snowflake")
}

#Preview {
    FeatureRowView(title: "Legendary Snow", copy: "More than 400", iconPath: "snowflake")
        .preferredColorScheme(.dark)
}
