//
//  CategoriesListView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

struct CategoriesListView: View {
    
    var categories: [CategoryViewModel]
    
    init(categories: [CategoryViewModel]) {
        self.categories = categories
    }
    
    var body: some View {
        List(categories, id: \.id) {
            category in
            let courses = Library.shared.getCoursesForCategory(withCategoryId: category.id)
            let coursesViewModels = courses.map(CourseViewModel.init)
            
            NavigationLink(destination: CoursesList(currentCategory: category)) {
                CategoryRowView(category: category)
            }
        }.navigationTitle("Categories")
    }
}

//struct CategoriesListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoriesListView()
//    }
//}
