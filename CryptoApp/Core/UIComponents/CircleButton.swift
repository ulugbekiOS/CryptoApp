//
//  CircleButton.swift
//  CryptoApp
//
//  Created by Ulugbek Ilhomov on 06/09/25.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.asset.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.asset.background)
            )
            .shadow(color: Color.asset.accent,radius: 10, x: 0, y: 0)
    }
}

#Preview {
    CircleButton(iconName: "heart")
}
