//
//  calendarPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct calendarPage : View {
    @Binding var calendar: Bool
    private struct Event: Identifiable {
        var date: Date
        var name: String
        var location: String
        var Description: String
        var id: String { name }
    }
    // sample
    private let Events: [Event] = [
        Event(date: Date(timeIntervalSince1970: 100), name: "A", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "B", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "C", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "D", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "E", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "F", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "G", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "H", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "I", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "J", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "K", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "L", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "M", location: "Place", Description: "Awesome"),
        Event(date: Date(timeIntervalSince1970: 100), name: "N", location: "Place", Description: "Awesome")
        
    ]
    
    var body: some View {
        // update to https://developer.apple.com/documentation/swiftui/table
        VStack (){
            Text("|NAME     |LOCATION      |YY-MM-DD|Description                       ").fontWeight(.semibold).underline()
            Text("")
            Text("")
            ForEach(Events) { event in
                Text("|[\(event.name.padding(toLength: 14, withPad: " ", startingAt: 0))](https://www.vanderbilt.edu/lgbtqi/calendar) |\(event.location.padding(toLength: 19, withPad: " ", startingAt: 0)) |\(event.date.description.suffix(23).padding(toLength: 8, withPad: " ", startingAt: 0)) |\(event.Description.padding(toLength: 20, withPad: " ", startingAt: 0))                                            ")
            }
            Button(action: {
                self.calendar = false
            }) {
                Text("Back to Home")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
                    .background(Color.yellow)
                    .cornerRadius(40)
            }
            
        }
    }
}

