//
//  homePage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct homePage : View {
    
    //@Binding var login: Bool
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
                //self.login = false
                runExample()
            }) {
                Text("DB Test")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
                .background(Color.yellow)
                .cornerRadius(40)
            }
            
            /*
            Rectangle()
                .fill(Color.clear)
                .frame(height: 1)
                .border(Color.black.opacity(0.1))
             */
        
        }
    }
}
