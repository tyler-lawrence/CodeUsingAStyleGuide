//
//  Font+custom.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 12/1/23.
//

import Foundation
import SwiftUI

enum CustomFont: String {
    case helvetica = "Helvetica"
    #warning("add case for arial. this includes adding the font file to the project")
}

enum CustomFontSize: CGFloat {
    case h0 = 36.0
    case h1 = 32.0
    case h2 = 20.0
    case h3 = 16.0
    case h4 = 8.0
}

extension Font {
    static func customFont(font: CustomFont, size: CustomFontSize) -> Font {
        return Font.custom(font.rawValue, size: size.rawValue, relativeTo: .largeTitle)
    }
}
