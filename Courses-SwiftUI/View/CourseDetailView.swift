//
//  CourseDetailView.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-15.
//

import SwiftUI

struct CourseDetailView: View {
    
    var course: CourseViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text(course.name)
                    .font(.title)
                    .bold()
                    .padding(.leading, 55)
                Spacer()
                
                Group {
                    Button(action: {
//                        print("Favourite button pressed in CourseDetailView")
                        course.toggleFavourite()
                    }){
                        Image(systemName: course.favouriteButtonImageName)
                            .font(.title2)
                            .foregroundColor(.blue)
                            .padding(.top, 2)
                            .padding(.trailing, 22)
                    }
                    
                }
            }
            
            Image(course.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit) //Kolla alternativ.
            
            
            HStack {
                Spacer()
                Text(course.description).padding(20)
                Spacer()
            }
            
            Button("Take this course!") {
                
            }.buttonStyle(OurButtonStyle())
            
            Spacer()
        }
    }
}

//struct CourseDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseDetailView()
//    }
//}
