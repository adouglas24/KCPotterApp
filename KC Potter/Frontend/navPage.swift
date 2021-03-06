//
//  navPage.swift
//  KC Potter
//
//  Created by Daniel Li on 3/24/22.
//

import SwiftUI

struct navPage: View {
    
    var body: some View {
        TabView {
            homePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            calendarPage()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            
            questionsPage()
                .tabItem {
                    Image(systemName: "questionmark")
                    Text("Resources")
                }
            
            mapPage()
                .tabItem {
                    Image(systemName: "map")
                    Text("Bathroom")
                }
            
        }.accentColor(Color.black)
    }
}

struct navPagePreview: PreviewProvider {
    static var previews: some View {
        navPage()
    }
}

