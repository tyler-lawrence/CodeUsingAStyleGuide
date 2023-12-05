//
//  IconBackground.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 11/29/23.
//

import Foundation
import SwiftUI

struct IconBackground: ViewModifier{
    let color: Color
    func body(content: Content) -> some View {
        content
            .padding(5)
            .background{
                Circle()
                    .foregroundStyle(color)
            }
    }
}

extension View {
    func iconBackground(_ color: Color) -> some View {
        modifier(IconBackground(color: color))
    }
}
