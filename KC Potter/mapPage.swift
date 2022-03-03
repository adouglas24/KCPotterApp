//
//  mapPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

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
