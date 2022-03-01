//
//  ContentView.swift
//  KC Potter
//
//  Created by Daniel Li on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (){
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("K.C. Potter Center at Vanderbilt")
                .font(.title3)
                .padding()
                .frame(maxWidth: 300, alignment: .center)

            Button(action: {
                print("Delete tapped!")
            }) {
                Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 80)
                .background(Color.red)
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
