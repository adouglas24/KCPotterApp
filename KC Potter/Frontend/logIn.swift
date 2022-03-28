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
            Text("KC Potter Center")
                .fontWeight(.semibold)
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
            .cornerRadius(40)
            
            Button(action: {
                login = true
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

struct logInPreview: PreviewProvider {
    static var previews: some View {
        Group {
            logIn(login: .constant(false))
          }
    }
}

