//
//  homePage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct homePage : View {
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
            
            Image("square_light")
                .resizable()
                .frame(minWidth: 0, maxHeight: 380)
                .padding(10)
                .cornerRadius(10)
            
            Text("About the Center")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: 400, alignment: .center)
            
            Text("LGBTQI Life, located within the physical structure of the K.C. Potter Center, is a cultural center and a place of affirmation for individuals of all identities, and a resource for information and support about gender and sexuality.")
                .padding()
                .frame(maxWidth: 400, alignment: .center)
        }
    }
}
