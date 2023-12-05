//
//  CalloutRowView.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 12/1/23.
//

import SwiftUI

struct CalloutRowView: View {
    let title: String
    let copy: String
    let iconPath: String // asset in style guide
   
    var body: some View {
        HStack{
            IconView(iconPath: iconPath)
            
            VStack(alignment: .leading){
                Text(title.uppercased())
                    .font(Font.customFont(font: .helvetica, size: .h2))
                    .fontWeight(.bold)
                    .offset(x: -5)
                    .padding(.bottom, 5)
                Text(copy)
                    .font(Font.customFont(font: .arial, size: .h3))
                    .fontWeight(.light)
                    .padding(.trailing, 20)
            }
            
            Spacer()
        }
        .foregroundStyle(Color.midnightBlue)
        .padding(.vertical, 15)
        .padding(.horizontal, 22.5)
        .background{
            Color.calloutBackground
        }
        
    }
}

#Preview {
    CalloutRowView(title: "Local Hack", copy: "Explore the back bowls at Alpine Meadows from the Sherwood lift for wide open terrain with a variety of pitches, all with view of Lake Tahoe. Follow it up with a stop in at The Ice Bar for afternoon refreshments.", iconPath: "snowflake")
}
