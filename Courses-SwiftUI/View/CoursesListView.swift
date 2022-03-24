//
//  CoursesListView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

struct CoursesListView: View {
    
    var courses: [CourseViewModel]
    var category: CategoryViewModel
    
    init(courses: [CourseViewModel], category: CategoryViewModel) {
        self.courses = courses
        self.category = category
    }
    
    var body: some View {
        //        printInViewContext("CoursesListView")
        List(courses, id: \.id) {
            course in
            NavigationLink(destination: CourseDetailView(course: course)) {
                CourseRowView(course: course)
            }
        }.navigationTitle(category.name)
    }
    
}

// Global utility function
func printInViewContext(_ text: String) -> Text {
    print(text)
    return Text("")
}

//struct CoursesListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoursesListView()
//    }
//}
