//
//  ContentView.swift
//  KC Potter
//
//  Created by Daniel Li on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var login = false
    @State var calendar = false
    @State var questions = false
    @State var map = false
    var body : some View {
        return Group {
            if !login {
                logIn(login: $login)
            }
            else if calendar {
                calendarPage(calendar: $calendar)
            } else if questions {
                questionsPage(questions: $questions)
            } else if map{
                mapPage(map: $map)
            }
            else {
                homePage(login: $login, calendar: $calendar, questions: $questions, map: $map)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
