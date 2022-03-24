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
                }, label: {
                    Text("Back to Home")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding()
                })
        
        }
    }
}
