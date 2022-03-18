//
//  questionsPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import SwiftUI

struct questionsPage : View {

    @State var value = ""
    var affiliation = "I am a ..."
    var affiliationList = ["Alumni", "Faculty", "Staff", "Student", "Sommunity"]
    var identity = "I identify as ..."
    var identityList = ["Lesbian/Gay", "Bi/Pan/Fluid", "Trans*", "Ally", "Intersex", "Ace/Aro"]
    var type = "I am looking for ..."
    var typeList = ["Athletics", "Counseling", "Educational", "Medical/Health", "Religious/Spiritual"]
    
    @Binding var questions: Bool
    var body: some View {
        VStack (){
            Button(action: {
                self.questions = false
            }) {
                Text("Questions Page")
                    .fontWeight(.semibold)
                    .font(.title)
                    .foregroundColor(Color.black)
                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
                .background(Color.yellow)
                .cornerRadius(40)
            }
        
        }
        
        Menu {
            ForEach(affiliationList, id: \.self){ client in
                Button(client) {
                    self.value = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(value.isEmpty ? affiliation : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.orange)
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 2)
            }
        }
        
        Menu {
            ForEach(identityList, id: \.self){ client in
                Button(client) {
                    self.value = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(value.isEmpty ? identity : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.orange)
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 2)
            }
        }
        
        Menu {
            ForEach(typeList, id: \.self){ client in
                Button(client) {
                    self.value = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(value.isEmpty ? type : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.orange)
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 2)
            }
        }
    }
}
