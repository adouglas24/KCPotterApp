//
//  ContentView.swift
//  KC Potter
//
//  Created by Daniel Li on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var login = false
    var body : some View {
        //In the future, will check if the user has a login token
        if !login {
            logIn(login: $login)
        } else {
            navPage()
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
