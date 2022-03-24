//
//  FavouritesListView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-16.
//

import SwiftUI

struct FavouritesListView: View {
    
    var coursesVM: CoursesViewModel
    
    init(coursesVM: CoursesViewModel) {
        self.coursesVM = coursesVM
    }
    
    var body: some View {
        List(coursesVM.favouriteCourses, id: \.id) {
            favourite in
            NavigationLink(destination: CourseDetailView(course: favourite)) {
                CourseRowView(course: favourite)
            }
        }.navigationTitle("Favourites")
    }
}

//struct FavouritesListView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavouritesListView()
//    }
//}
