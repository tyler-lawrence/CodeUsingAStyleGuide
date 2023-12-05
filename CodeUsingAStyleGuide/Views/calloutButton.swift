//
//  calloutButton.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 12/5/23.
//

import Foundation
import SwiftUI

struct calloutButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.customFont(font: .helvetica, size: .h3))
            .bold()
            .padding()
            .background(Color.calloutBackground)
            .clipShape(Capsule())
            .foregroundStyle(Color.midnightBlue)
    }
}
