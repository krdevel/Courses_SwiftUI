//
//  CategoryViewModel.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import Foundation

class CategoriesViewModel: ObservableObject {
    
    @Published var categories: [CategoryViewModel] = [CategoryViewModel]()
    
    func getCategories() {
        self.categories = Library.shared.getCategories().map(CategoryViewModel.init)
    }
    
    func addCategory() {
        let id = UUID().uuidString.lowercased()
//        print("addCategory id: \(id)")
        let newCategory = Category(id: id, name: "A new course", imgName: "video-production-4223885", somethingElse: "Mmmmm")
        Library.shared.categories.append(newCategory)
        getCategories()
    }
    
    
}

struct CategoryViewModel {
    
    let category: Category
    
    var id: String {
        return category.id
    }
    
    var name: String {
        return category.name
    }
    
    var imageName: String {
        return category.imgName
    }
    
}
