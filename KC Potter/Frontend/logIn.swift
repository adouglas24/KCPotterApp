//
//  logIn.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

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
