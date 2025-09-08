//
//  MyToolbarHome.swift
//  CryptoApp
//
//  Created by Ulugbek Ilhomov on 08/09/25.
//
import SwiftUI

struct MyToolbarHome: ToolbarContent{
    
    @Binding var showPortfolio: Bool
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
                CircleButton(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                    .background(
                        BackgroundAnimationOfButton(animate: $showPortfolio)
                            .foregroundStyle(Color.gray)
                            .frame(width: 90, height: 90)
                    )
                    .padding()
            }
            ToolbarItem(placement: .principal) {
                Text("Live prices")
                    .font(.headline)
            }
            ToolbarItem(placement: .topBarTrailing) {
                CircleButton(iconName: "chevron.right")
                    .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                    .onTapGesture {
                        withAnimation(.spring) {
                            showPortfolio.toggle()

                        }
                    }
                    .padding()
            }
        
    }
}

