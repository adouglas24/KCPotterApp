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
                .font(.title2)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: 400, alignment: .center)
            
            Image("flag")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: 380, maxHeight: 250)
            
            Button(action: {
                print("Delete tapped!")
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
                print("Delete tapped!")
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
                print("Delete tapped!")
            }) {
                Text("Find a Gender Neutral Bathroom")
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
