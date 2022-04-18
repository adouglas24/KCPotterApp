//
//  KC_PotterApp.swift
//  KC Potter
//
//  Created by Daniel Li on 2/28/22.
//

import SwiftUI

@main
struct KC_PotterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear(perform: fetch)
        }
    }
    
    private func fetch() {
        print("fetching database values")
        fetchDatabase()
    }
}
