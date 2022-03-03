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

struct logIn : View {
    @Binding var login: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.login = true
            }) {
                Text("LOGIN")
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


struct homePage : View {
    
    @Binding var login: Bool
    @Binding var calendar: Bool
    @Binding var questions: Bool
    @Binding var map: Bool
    
    var body: some View {
        VStack (){
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("K.C. Potter Center at Vanderbilt")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: 400, alignment: .center)
            
            Image("flag")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 380, maxHeight: 250)
            
            Button(action: {
                self.calendar = true
            }) {
                Text("Get Connected")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 101)
                .background(Color.red)
                .cornerRadius(40)
            }
            .padding(.top, 50.0)
            
            Button(action: {
                self.questions = true
            }) {
                Text("Get Involved")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
                .background(Color.orange)
                .cornerRadius(40)
            }
            
            Button(action: {
                self.map = true
            }) {
                Text("Find a Gender Neutral Bathroom")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
                .background(Color.yellow)
                .cornerRadius(40)
            }
            Button(action: {
                self.login = false
            }) {
                Text("Log Out")
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

struct calendarPage : View {
    @Binding var calendar: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.calendar = false
            }) {
                Text("Calendar Page")
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

struct questionsPage : View {
    @Binding var questions: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.questions = false
            }) {
                Text("Questions Page")
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

struct mapPage : View {
    @Binding var map: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.map = false
            }) {
                Text("Map Page")
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
