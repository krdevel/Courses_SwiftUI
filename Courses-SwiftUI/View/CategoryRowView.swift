//
//  CategoryRowView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-15.
//

import SwiftUI

struct CategoryRowView: View {
    
    let category: CategoryViewModel
    
    var body: some View {
        HStack {
            Image(category.imageName).resizable().frame(minWidth: 170, maxWidth: 180, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .leading)
            
            Text("\(category.name)").bold()
        }
        
    }
}

//struct CategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryView()
//    }
//}
