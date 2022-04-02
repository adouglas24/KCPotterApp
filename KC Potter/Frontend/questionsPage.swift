//
//  questionsPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//  Modified by Zifeng Liang on 3/31/22.

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
    var resourceList = ["Athletics", "Counseling", "Crisis", "Educational", "Medical/Health", "Religious/Spiritual"]

    @State var input = ["", "", ""]
    
    var body: some View {
        
        VStack{
            // community affliation drop-down
            Menu {
                ForEach(affiliationList, id: \.self){ client in
                    Button(client) {
                        self.affVal = client
                    }
                }
            } label: {
                VStack(spacing: 10){
                    Text("Community Affiliation:")
                    HStack{
                        Text(affVal.isEmpty ? affiliation : affVal)
                            .foregroundColor(affVal.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.green)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .padding(.horizontal)
                    Rectangle()
                        .fill(Color.green)
                        .frame(height: 2)
                }.padding()
            }
            
            // LGBTQIA+ identity drop-down
            Menu {
                ForEach(identityList, id: \.self){ client in
                    Button(client) {
                        self.idVal = client
                    }
                }
            } label: {
                VStack(spacing: 10){
                    Text("LGBTQ+ Identity:")
                    HStack{
                        Text(idVal.isEmpty ? identity : idVal)
                            .foregroundColor(idVal.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.blue)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .padding(.horizontal)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 2)
                }.padding()
            }
            
            // resource type drop-down
            Menu {
                ForEach(resourceList, id: \.self){ client in
                    Button(client) {
                        self.resVal = client
                    }
                }
            } label: {
                VStack(spacing: 10){
                    Text("Resource Type:")
                    HStack{
                        Text(resVal.isEmpty ? resource : resVal)
                            .foregroundColor(resVal.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color.purple)
                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .padding(.horizontal)
                    Rectangle()
                        .fill(Color.purple)
                        .frame(height: 2)
                }.padding()
            }
            
            // buttons
            VStack (){
                Group {
                    Button(action: {
                        input[0]=affVal
                        input[1]=idVal
                        input[2]=resVal
                    }, label: {
                        Text("Get assistance")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 40)
                            .background(Color.yellow)
                            .cornerRadius(15)
                            .padding()
                    })
                }.frame(alignment: .bottom)
            }
            
            
            VStack {
                if input[0] == "Community" || input[2] == "Counseling" {
                    Text("[Melissa Gordon](https://www.newcounselingpllc.com/who-we-are-new) at Nashville Emotional Wellness")
                    Text("[Rebecca Lesesne](https://www.rebecca-lesesne.com/appointments) – Private Practice")
                    Text("[Matt Mills](http://mattmillscounseling.com/) – Private Practice")
                    Text("[Carlton Cornett](https://carlton-cornett-lcsw.com/index.html) – Private Practice")
                    Text("[Sasha-Nicole Cory](https://workscounselingcenter.com/sasha-nicole-cory/) – The Works")
                    Text("[Cat Tourangeau](https://www.alliedbehavior.com/) – Allied Behavioral Health")
                    Text("[Frank Byndloss](https://www.drfrankbyndloss.com/) – Private Practice")
                    Text("[Alyssa Birmingham](https://www.thebriggsinstitute.com/alyssab) – the Briggs inst.")
                    Text("[Aaron Byrd](http://byrdseyeviewtherapy.com/) – Byrds Eye View")
                    Text("[Ruth Cohen](http://www.ruthcohen.net/about-ruth-cohen-nashville-counselor/) – Private Practice")
                }
                
                
                if input[2] == "Crisis" {
                    Text("Vanderbilt")
                    Text("[UCC Urgent Care Counseling](https://www.vanderbilt.edu/ucc/services/urgent-care-counseling/) – 615.322.2571")
                    Text("VU Medical Center Emergency Services – 615.322.0160")
                    Text("VU Police Department – 911 (emergency) or 615.421.1911 (non-emergency)")
                    Text("National")
                    Text("The Trevor Project – 866.488.7386")
                    Text("National Suicide Prevention LifeLine – 800.273.8255")
                    Text("Crisis Text Line – Text START to 741-741")
                    Text("Gay, Lesbian, Bisexual, and Transgender National Hoteline – 888.843.4564")
                    Text("GLBT National Youth Talkline – 800.246.7743")
                }
            }
        }
    }
}
