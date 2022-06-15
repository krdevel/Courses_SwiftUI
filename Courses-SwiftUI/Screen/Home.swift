//
//  Start.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

struct Home: View {
    @State private var tabSelection = 1
    var body: some View {
        TabView(selection: $tabSelection) {
            Start(tabSelection: $tabSelection)
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Start")
                }
                .tag(1)
            
            CategoriesList()
                .tabItem{
                    Image(systemName: "arrow.triangle.branch")
                    Text("Categories")
                }
                .tag(2)
            
            FavouritesList()
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Favourites")
                }
        }.accentColor(Color(UIColor.label)) // Adaptive color for light and dark mode
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
