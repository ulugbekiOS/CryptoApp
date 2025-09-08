//
//  HomeView.swift
//  CryptoApp
//
//  Created by Ulugbek Ilhomov on 06/09/25.
//

 import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = true
    
    var body: some View {
            
            Text("Hello")
            
            .toolbar {
                MyToolbarHome(showPortfolio: $showPortfolio)
            }
           
        }
    }

#Preview {
    NavigationStack{
        HomeView()
    }
}
