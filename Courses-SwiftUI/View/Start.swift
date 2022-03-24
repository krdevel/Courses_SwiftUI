//
//  Home.swift
//  Courses-SwiftUI
//
//  Created by Kristian Bredin on 2022-02-14.
//

import SwiftUI

struct Start: View {
    
    @Binding var tabSelection: Int
    
    
    var body: some View {
        
        ZStack {
            Image("plant-4036130_1920")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(edges: .top)
                .ignoresSafeArea(edges: .horizontal)
            VStack {
                
                TitleView(text: "Westcoast Education", topPaddingPortrait: 64, topPaddingLandscape: 86, color: .white)
                
                Spacer()
                    .padding()
                
                Button("Course Categories") {
                    withAnimation {
                        self.tabSelection = 2
                    }
                }
                .buttonStyle(OurButtonStyle())
                .padding(.bottom, 100)
            }
        }
    }
    
}

struct TitleView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    var text: String
    var topPaddingPortrait: CGFloat
    var topPaddingLandscape: CGFloat
    var color: Color
    
    var body: some View {
        let textView = Text(text)
            .font(Font.custom("EBGaramond-ExtraBold", size: 38))
            .foregroundColor(color)
        if sizeClass == .compact {
            textView.padding(.top, topPaddingLandscape)
        } else {
            textView.padding(.top, topPaddingPortrait)
        }
    }
}

struct OurButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.custom("Gill Sans Bold", size:22))
            .foregroundColor(.white)
            .frame(height: 50)
            .frame(maxWidth: 270)
            .background(Color(.sRGB, red: 0.5, green: 0.74, blue: 0.5, opacity: 1))
            .cornerRadius(.infinity)
            .padding()
    }
}

//struct Start_Previews: PreviewProvider {
//    static var previews: some View {
//        Start()
//    }
//}
