//
//  User.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-15.
//

import Foundation

struct User {
    static let currentlyLoggedInUser = User()
    private init() {}
    var favouriteCourses = ["513671ff-4922-48d6-a9e2-43d1fd508c30"] // As an hardcoded example
    
    
    func courseIsFavourite(_ course: Course) -> Bool {
        return favouriteCourses.contains(course.id)
    }
    
    mutating func addToFavourites(_ course: Course) {
        favouriteCourses.append(course.id)
    }
    
    mutating func removeFromFavourites(_ course: Course) {
        if let index = favouriteCourses.firstIndex(of: course.id) {
            favouriteCourses.remove(at: index)
        }
    }
    
}
