//
//  FavouritesList.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-16.
//

import SwiftUI

struct FavouritesList: View {
    
    @ObservedObject private var coursesViewModel: CoursesViewModel
    
    init() {
        self.coursesViewModel = CoursesViewModel()
        self.coursesViewModel.getFavouriteCourses()
    }
    
    var body: some View {
        NavigationView {
            FavouritesListView(coursesVM: coursesViewModel)
        }
        .navigationViewStyle(.stack)
    }
}

//struct FavouritesList_Previews: PreviewProvider {
//    static var previews: some View {
//        FavouritesList()
//    }
//}
