//
//  homePage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

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
