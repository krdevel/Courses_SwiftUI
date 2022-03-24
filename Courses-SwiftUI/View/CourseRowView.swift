//
//  CourseRowView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-15.
//

import SwiftUI

struct CourseRowView: View {
    
    let course: CourseViewModel
    
    var body: some View {
        HStack {
            Image(course.imageName).resizable().frame(minWidth: 170, maxWidth: 180, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .leading)
            Text("\(course.name)").bold()
        }
    }
}

//struct CourseRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseRowView()
//    }
//}
