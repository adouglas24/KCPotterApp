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



struct mapPage: View {

  var body: some View {
    VStack {
      MapView()
  }
}
}

struct MapView: UIViewRepresentable {

  typealias UIViewType = MKMapView

  func makeCoordinator() -> MapViewCoordinator {
    return MapViewCoordinator()
  }

  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator

    let region = MKCoordinateRegion(
      center: CLLocationCoordinate2D(latitude: 36.147335938307485, longitude: -86.80487060215306),
      span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    mapView.setRegion(region, animated: true)

    // NYC
    let p1 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 40.71, longitude: -74))

    // Boston
    let p2 = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 42.36, longitude: -71.05))
      

    let request = MKDirections.Request()
    request.source = MKMapItem(placemark: p1)
    request.destination = MKMapItem(placemark: p2)
    request.transportType = .automobile

    let directions = MKDirections(request: request)
    directions.calculate { response, error in
      guard let route = response?.routes.first else { return }
      mapView.addAnnotations([p1, p2])
      mapView.addOverlay(route.polyline)
      mapView.setVisibleMapRect(
        route.polyline.boundingMapRect,
        edgePadding: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20),
        animated: true)
    }
    return mapView
  }

  func updateUIView(_ uiView: MKMapView, context: Context) {
  }

  class MapViewCoordinator: NSObject, MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
      let renderer = MKPolylineRenderer(overlay: overlay)
      renderer.strokeColor = .systemBlue
      renderer.lineWidth = 5
      return renderer
    }
  }
}


struct mapPagePreview: PreviewProvider {
    static var previews: some View {
        Group {
            mapPage()
          }
    }
}
