//
//  calendarPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct calendarPage : View {
    var body: some View {
        VStack (){
            SwiftUIWebView(url: URL(string: "https://www.vanderbilt.edu/lgbtqi/calendar"))
        }
    }
}

