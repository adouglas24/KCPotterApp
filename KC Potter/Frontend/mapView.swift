import SwiftUI
import MapKit


// code from https://stackoverflow.com/questions/56553527/show-user-location-on-map-swiftui

// MARK: Struct that handle the map
struct MapView: UIViewRepresentable {

  @Binding var locationManager: CLLocationManager
  @Binding var showMapAlert: Bool

let map = MKMapView()


  ///Creating map view at startup
  func makeUIView(context: Context) -> MKMapView {
      locationManager.delegate = context.coordinator
      
      //setup map
      let span = MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009)
      let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.143221137535406, longitude: -86.80529316615699), span: span)
      map.setRegion(region, animated: true)
    
      
      for bathroom in bathrooms {
          
          let temp = MKPointAnnotation()
          temp.coordinate = CLLocationCoordinate2D(latitude: bathroom.lat, longitude: bathroom.long)
          temp.title = bathroom.name
          temp.subtitle = bathroom.sub
          map.addAnnotation(temp)
      }
    return map
  }

  func updateUIView(_ view: MKMapView, context: Context) {
    map.showsUserLocation = true
    map.userTrackingMode = .follow
  }
    

  ///Use class Coordinator method
  func makeCoordinator() -> MapView.Coordinator {
    return Coordinator(mapView: self)
  }

  //MARK: - Core Location manager delegate
  class Coordinator: NSObject, CLLocationManagerDelegate {

    var mapView: MapView

    init(mapView: MapView) {
      self.mapView = mapView
    }

    ///Switch between user location status
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
      switch status {
      case .restricted:
        break
      case .denied:
        mapView.showMapAlert.toggle()
        return
      case .notDetermined:
        mapView.locationManager.requestWhenInUseAuthorization()
        return
      case .authorizedWhenInUse:
        return
      case .authorizedAlways:
        mapView.locationManager.allowsBackgroundLocationUpdates = true
        mapView.locationManager.pausesLocationUpdatesAutomatically = false
        return
      @unknown default:
        break
      }
      mapView.locationManager.startUpdatingLocation()
    }
   }
  }


