//
//  CoursesList.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

//SKIPPA Denna Sedan

struct CoursesList: View {
    
    @ObservedObject private var coursesViewModel: CoursesViewModel
    var currentCategory: CategoryViewModel
    
    init(currentCategory: CategoryViewModel) {
        self.coursesViewModel = CoursesViewModel()
        self.currentCategory = currentCategory
        self.coursesViewModel.getCourses()
        self.coursesViewModel.getCoursesForCategory(withCategoryId: currentCategory.id)
    }
    
    
    var body: some View {
        CoursesListView(courses: coursesViewModel.coursesInCurrentCategory, category: currentCategory)
            .accentColor(.black)
        .navigationViewStyle(.stack)    }
}

//struct CoursesList_Previews: PreviewProvider {
//    static var previews: some View {
//        CoursesList()
//    }
//}
