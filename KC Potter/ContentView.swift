//
//  ContentView.swift
//  KC Potter
//
//  Created by Daniel Li on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var move1 = false
    @State var move2 = false
    @State var move3 = false
    var body : some View {
        return Group {
            if move1 {
                secondPage(move1: $move1)
            } else if move2 {
                thirdPage(move2: $move2)
            } else if move3{
                fourthPage(move3: $move3)
            }
            else {
                homePage(move1: $move1, move2: $move2, move3: $move3)
            }
        }
    }
}



struct homePage : View {
    
    @Binding var move1: Bool
    @Binding var move2: Bool
    @Binding var move3: Bool
    
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
                self.move1 = true
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
                self.move2 = true
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
                self.move3 = true
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

struct secondPage : View {
    @Binding var move1: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.move1 = false
            }) {
                Text("Second Page")
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

struct thirdPage : View {
    @Binding var move2: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.move2 = false
            }) {
                Text("Third Page")
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

struct fourthPage : View {
    @Binding var move3: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.move3 = false
            }) {
                Text("Fourth Page")
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
