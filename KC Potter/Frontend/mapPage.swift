//
//  mapPage.swift
//  KC Potter
//
//  Created by Alexander Douglas on 3/3/22.
//

import MapKit
import SwiftUI
import UIKit

//struct mapPage : View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.147335938307485, longitude: -86.80487060215306), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    var body: some View {
//        VStack (){
//            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
//        }
//
//    }
//}

//using starter code from https://www.youtube.com/watch?v=H6pmm62axCg

// code from https://stackoverflow.com/questions/56553527/show-user-location-on-map-swiftui

import SwiftUI
import CoreLocation

// MARK: View that shows map to users
struct mapPage: View {
    
    @State var locationManager = CLLocationManager()
    @State var showMapAlert = false
    
    var body: some View {
        MapView(locationManager: $locationManager, showMapAlert: $showMapAlert)
            .alert(isPresented: $showMapAlert) {
                Alert(title: Text("Location access denied"),
                      message: Text("Your location is needed"),
                      primaryButton: .cancel(),
                      secondaryButton: .default(Text("Settings"),
                                                action: { self.goToDeviceSettings() }))
            }
    }
}

extension mapPage {
    ///Path to device settings if location is disabled
    func goToDeviceSettings() {
        guard let url = URL.init(string: UIApplication.openSettingsURLString) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}



struct mapPagePreview: PreviewProvider {
    static var previews: some View {
        Group {
            mapPage()
        }
    }
}
