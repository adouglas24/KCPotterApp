//
//  questionsPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//  Modified by Zifeng Liang on 3/31/22.

import SwiftUI

struct questionsPage : View {
    
    @State var affVal = 0
    @State var idVal = 0
    @State var resVal = 0
//    var affiliation = "I am a ..."
    var affiliationList = ["I am a ...","Alumni", "Faculty", "Staff", "Student", "Community"]
//    var identity = "I identify as ..."
    var identityList = ["I identify as ...", "Lesbian/Gay", "Bi/Pan/Fluid", "Trans*", "Ally", "Intersex", "Ace/Aro"]
//    var resource = "I am looking for ..."
    var resourceList = ["I am looking for ...", "Athletics", "Counseling", "Crisis", "Educational", "Medical/Health", "Religious/Spiritual"]
    
    @State var input = ["I am a ...", "I identify as ...", "I am looking for ..."]
    
    
    
//    enum Affiliation: String, CaseIterable, Identifiable {
//        case alumni, faculty, staff, student, community, empty
//        var id: Self { self }
//    }
//
//    @State private var selectedAff: Affiliation = .empty


    var body: some View {
        VStack {
            // make selections
            //Section {
                Picker("Community Affliation", selection: $affVal) {
                    ForEach(0 ..< affiliationList.count) {
                        Text(self.affiliationList[$0])
                    }
                }.accessibility(identifier:"pickAff")
            //}
            
            //Section {
                Picker("LGBTQ+ Identity", selection: $idVal) {
                    ForEach(0 ..< identityList.count) {
                        Text(self.identityList[$0])
                    }
                }.accessibility(identifier:"pickId")
            //}
            
            //Section {
                Picker("Resource Type", selection: $resVal) {
                    ForEach(0 ..< resourceList.count) {
                        Text(self.resourceList[$0])
                    }
                }.accessibility(identifier:"pickRes")
            //}
        

//
            
//            Button(action: {
//                login = true
//            }) {
//                Text("LOGIN")
//                    .fontWeight(.semibold)
//                    .font(.title)
//                    .foregroundColor(Color.black)
//                    .frame(minWidth: 0, maxWidth: 380, maxHeight: 100)
//                .background(Color.yellow)
//                .cornerRadius(40)
//            }
            // buttons
            VStack (){
                //Group {
                    Button(action: {
                        input[0] = affiliationList[affVal]
                        input[1] = identityList[idVal]
                        input[2] = resourceList[resVal]
                    }) {
                        Text("Get assistance")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 40)
                            .background(Color.yellow)
                            .cornerRadius(15)
                            .padding()
                    }
                //}.frame(alignment: .bottom)
            }
            
            
    
            
            // display resources
            VStack {
                if input[0] == "I am a ..." && input[1] == "I identify as ..." && input[2] == "I am looking for ..." {
                    Text("Please make selections")
                } else if input[0] == "Community" || input[2] == "Counseling" {
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
                } else if input[2] == "Crisis" {
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
                } else {
                    Text("No resources found")
                }
                
                
            }
            
        }
        
        
        
        
        //        VStack{
        // community affliation drop-down
        //            Menu {
        //                ForEach(affiliationList, id: \.self){ client in
        //                    Button(client) {
        //                        self.affVal = client
        //                    }
        //                }
        //            } label: {
        //                VStack(spacing: 10){
        //                    Text("Community Affiliation:")
        //                    HStack{
        //                        Text(affVal.isEmpty ? affiliation : affVal)
        //                            .foregroundColor(affVal.isEmpty ? .gray : .black)
        //                        Spacer()
        //                        Image(systemName: "chevron.down")
        //                            .foregroundColor(Color.green)
        //                            .font(Font.system(size: 20, weight: .bold))
        //                    }
        //                    .padding(.horizontal)
        //                    Rectangle()
        //                        .fill(Color.green)
        //                        .frame(height: 2)
        //                }.padding()
        //            }
        //
        //            // LGBTQIA+ identity drop-down
        //            Menu {
        //                ForEach(identityList, id: \.self){ client in
        //                    Button(client) {
        //                        self.idVal = client
        //                    }
        //                }
        //            } label: {
        //                VStack(spacing: 10){
        //                    Text("LGBTQ+ Identity:")
        //                    HStack{
        //                        Text(idVal.isEmpty ? identity : idVal)
        //                            .foregroundColor(idVal.isEmpty ? .gray : .black)
        //                        Spacer()
        //                        Image(systemName: "chevron.down")
        //                            .foregroundColor(Color.blue)
        //                            .font(Font.system(size: 20, weight: .bold))
        //                    }
        //                    .padding(.horizontal)
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                        .frame(height: 2)
        //                }.padding()
        //            }
        //
        //            // resource type drop-down
        //            Menu {
        //                ForEach(resourceList, id: \.self){ client in
        //                    Button(client) {
        //                        self.resVal = client
        //                    }
        //                }
        //            } label: {
        //                VStack(spacing: 10){
        //                    Text("Resource Type:")
        //                    HStack{
        //                        Text(resVal.isEmpty ? resource : resVal)
        //                            .foregroundColor(resVal.isEmpty ? .gray : .black)
        //                        Spacer()
        //                        Image(systemName: "chevron.down")
        //                            .foregroundColor(Color.purple)
        //                            .font(Font.system(size: 20, weight: .bold))
        //                    }
        //                    .padding(.horizontal)
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                        .frame(height: 2)
        //                }.padding()
        //            }
        //}
        

        

    }
}
