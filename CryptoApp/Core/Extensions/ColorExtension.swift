//
//  ColorExtension.swift
//  CryptoApp
//
//  Created by Ulugbek Ilhomov on 07/09/25.
//

import Foundation
import SwiftUI

extension Color {
    static let asset = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
