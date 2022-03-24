//
//  CourseViewModel.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import Foundation
import SwiftUI

class CoursesViewModel: ObservableObject {
    
    @Published var courses: [CourseViewModel] = [CourseViewModel]()
    @Published var coursesInCurrentCategory = [CourseViewModel]()
    @Published var favouriteCourses = [CourseViewModel]()
    
    
    func getCourses() {
        self.courses = Library.shared.getCourses().map(CourseViewModel.init)
    }
    
    func getCoursesForCategory(withCategoryId id: String) {
        self.coursesInCurrentCategory = Library.shared.getCoursesForCategory(withCategoryId: id).map(CourseViewModel.init)
    }
    
    func getFavouriteCourses() {
        var favourites = [Course]()
        for course in Library.shared.getCourses() {
            if User.currentlyLoggedInUser.courseIsFavourite(course) {
                favourites.append(course)
            }
        }
        self.favouriteCourses = favourites.map(CourseViewModel.init)
    }
}

struct CourseViewModel {
    
    let course: Course
    
    var id: String {
        return course.id
    }
    
    var name: String {
        return course.name
    }
    
    var imageName: String {
        return course.imgName
    }
    
    var description: String {
        return course.descr
    }
    
    var isFavouriteForCurrentUser: Bool {
        return User.currentlyLoggedInUser.courseIsFavourite(course)
    }
    
    var favouriteButtonImageName: String {
        if self.isFavouriteForCurrentUser {
            return "heart.fill"
        } else {
            return "heart"
        }
    }
    
    func toggleFavourite() {
//        print("toggleFavourite in CourseViewModel")
        
        var currentUser = User.currentlyLoggedInUser
        if currentUser.courseIsFavourite(course) {
            currentUser.removeFromFavourites(course)
        } else {
            currentUser.addToFavourites(course)
        }
    }
    
}
