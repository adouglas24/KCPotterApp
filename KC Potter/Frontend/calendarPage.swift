//
//  calendarPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct calendarPage : View {
    @Binding var calendar: Bool
    var body: some View {
        // update to https://developer.apple.com/documentation/swiftui/table
        VStack (){
                SwiftUIWebView(url: URL(string: "https://www.vanderbilt.edu/lgbtqi/calendar"))
                
            Button(action: {
                    self.calendar = false
                }, label: {
                    Text("Back to Home")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding()
                })
    }
}
}

