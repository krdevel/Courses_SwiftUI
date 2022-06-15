//
//  CategoriesList.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

struct CategoriesList: View {
    
    @ObservedObject private var categoriesViewModel: CategoriesViewModel
    
    init() {
        categoriesViewModel = CategoriesViewModel()
        categoriesViewModel.getCategories()
    }
    
    
    var body: some View {
        VStack {
            NavigationView {
                CategoriesListView(categories: categoriesViewModel.categories)
            }
            .navigationViewStyle(.stack)
            
            // Un-comment below for a test of the @ObservedObject property of this class
            
            //            Button("Add Category") {
            //                print("Add Category button action")
            //                categoriesViewModel.addCategory()
            //            }
            
        }
    }
}

struct CategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesList()
    }
}
