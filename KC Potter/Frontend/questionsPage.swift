//
//  questionsPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//  Modified by Zifeng Liang on 3/18/22.

import SwiftUI

struct questionsPage : View {

    @State var affVal = ""
    @State var idVal = ""
    @State var resVal = ""
    var affiliation = "I am a ..."
    var affiliationList = ["Alumni", "Faculty", "Staff", "Student", "Sommunity"]
    var identity = "I identify as ..."
    var identityList = ["Lesbian/Gay", "Bi/Pan/Fluid", "Trans*", "Ally", "Intersex", "Ace/Aro"]
    var resource = "I am looking for ..."
    var resourceList = ["Athletics", "Counseling", "Educational", "Medical/Health", "Religious/Spiritual"]
        var body: some View {

            VStack{
        Menu {
            ForEach(affiliationList, id: \.self){ client in
                Button(client) {
                    self.affVal = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(affVal.isEmpty ? affiliation : affVal)
                        .foregroundColor(affVal.isEmpty ? .gray : .black)
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
                    self.idVal = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(idVal.isEmpty ? identity : idVal)
                        .foregroundColor(idVal.isEmpty ? .gray : .black)
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
            ForEach(resourceList, id: \.self){ client in
                Button(client) {
                    self.resVal = client
                }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(resVal.isEmpty ? resource : resVal)
                        .foregroundColor(resVal.isEmpty ? .gray : .black)
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
        
        VStack (){
            Group {
                Button(action: {
                    print("Display resources")
                }, label: {
                    Text("Get assistance")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding()
                })
                
                Button(action: {
                }, label: {
                    Text("Back to Home")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding()
                })
            }.frame(alignment: .bottom)
        }
    }
}
}
