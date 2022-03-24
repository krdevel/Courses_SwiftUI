//
//  Library.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import Foundation

struct Library {
    
    // var since we need to add categories and courses
    static var shared = Library()
    
    var categories: [Category]
    var courses: [Course]
    
    
    private init() {
        categories = [Category(id: "4c1d4885-2a26-4167-9192-7e9bf42590c0", name: "Software Development", imgName: "software_development", somethingElse: "Only present in model"),
                      Category(id: "d62946d2-0325-4170-8ba2-68915af130fb", name: "Music", imgName: "music", somethingElse: "Also only present in model")
                      ]

        courses = [Course(id: "513671ff-4922-48d6-a9e2-43d1fd508c30", name: "Swift", category: "4c1d4885-2a26-4167-9192-7e9bf42590c0", imgName: "swiftWithOverlay_5_2", descr: "Once you have completed this course, you will be a better Swift developer.", teacher: "John Stevens", duration: Duration(hours: 1, minutes: 12)),
                   Course(id: "c6bfc31c-a1bc-4902-8d59-2c11e61a0faa", name: "JavaScript", category: "4c1d4885-2a26-4167-9192-7e9bf42590c0", imgName: "javaScript", descr: "Master JavaScript.", teacher: "Will Jones", duration: Duration(hours: 1, minutes: 48)),
                   Course(id: "7f81d7d7-51ef-46a4-9c27-1beb04cd2e4f", name: "Guitar", category: "d62946d2-0325-4170-8ba2-68915af130fb", imgName: "guitar", descr: "Learn how to master the acoustic guitar, with this comprehensive course.", teacher: "Sarah Wilson", duration: Duration(hours: 3, minutes: 9))
                   ]
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getCourses() -> [Course] {
        return courses
    }
    
    func getCoursesForCategory(withCategoryId id: String) -> [Course] {
        var result = [Course]()
        for course in courses {
            if course.category == id {
                result.append(course)
            }
        }
        return result
    }
    
    
}




