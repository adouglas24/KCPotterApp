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
      
      // add points here
      bathrooms.append(Bathroom(name: "6 Magnolia Circle", sub: "053, 055", lat:36.143353171665524, long: -86.79748570419002))
      bathrooms.append(Bathroom(name: "Alumni Hall", sub: "104, 105", lat:36.14796291398134, long: -86.80339059928727))
      bathrooms.append(Bathroom(name: "Baker Buikding", sub: "Near 800c, 975, or 1120", lat:36.14995876500602, long: -86.80039487076027))
      bathrooms.append(Bathroom(name: "Benton Chapel", sub: "Atrium", lat:36.14625414807481, long: -86.8005887179219))
      
      // to change lat:
      bathrooms.append(Bathroom(name: "Black Cultural Center", sub: "", lat:36.14565151981303, long: -86.80314087679146))
      bathrooms.append(Bathroom(name: "Blakemore House", sub: "112A, 112B", lat:36.14303733804298, long: -86.81169534883435))
      bathrooms.append(Bathroom(name: "Blair School of Music", sub: "Near 2128", lat:36.138664240314775, long: -86.8060523851832))
      
      bathrooms.append(Bathroom(name: "Buttrick Hall", sub: "029", lat:36.14580186900153, long: -86.80255499008476))
      bathrooms.append(Bathroom(name: "Calhoun", sub: "000LA, 000LB", lat:36.14722402128105, long: -86.80145262381211))
      bathrooms.append(Bathroom(name: "Center for Student Wellbeing", sub: "102, 105", lat:36.144122056552455, long: -86.80288686836414))
      
      bathrooms.append(Bathroom(name: "Central Library", sub: "413H", lat:36.14570131392914, long: -86.80030299931633))
      bathrooms.append(Bathroom(name: "Chaplain & Religious Life", sub: "107A, 203", lat:36.144380923369454, long: -86.80424915476186))
      bathrooms.append(Bathroom(name: "Cohen", sub: "104, 120", lat:36.141517081038636, long: -86.7992763909687))
      bathrooms.append(Bathroom(name: "Cole Hall", sub: "113, 210", lat:36.146416043933556, long: -86.804290651222))
      bathrooms.append(Bathroom(name: "Commons Center", sub: "Floor 2", lat:36.1418066049713, long: -86.79703130318323))
      bathrooms.append(Bathroom(name: "Crawford House", sub: "204, 206", lat:36.13995110978392, long: -86.79786623880223))
      bathrooms.append(Bathroom(name: "Currey Tennis Center", sub: "202, 203", lat:36.14174463016978, long: -86.80732625439383))
      bathrooms.append(Bathroom(name: "Divinity School", sub: "G40", lat:36.14664976030722, long: -86.8005841856796))
      
      bathrooms.append(Bathroom(name: "E.Bronson Ingram College", sub: "0022, 0023, 1008, 1121", lat:36.148658081289916, long: -86.80373988558758))
      bathrooms.append(Bathroom(name: "East House", sub: "220", lat:36.14034095178352, long: -86.79836232485688))
      bathrooms.append(Bathroom(name: "Engineering Science Building", sub: "000L3, 100L1, 100L2, 200L3, 300L3, 400L3, 500L3", lat:36.14280017992489, long: -86.80587855315616))
      bathrooms.append(Bathroom(name: "Eskind Biomedical Library", sub: "Floor LL, 1", lat:36.143096299563084, long: -86.80245752520754))
      
      bathrooms.append(Bathroom(name: "Featheringill-Jacobs", sub: "123", lat:36.14453323792089, long: -86.80356671547463))
      bathrooms.append(Bathroom(name: "Furman", sub: "005A, 005B", lat:36.147916339827376, long: -86.80133450552086))
      bathrooms.append(Bathroom(name: "Garland", sub: "006, 008", lat:36.146467645596815, long: -86.80159814120442))
      bathrooms.append(Bathroom(name: "Gillette House", sub: "121, 123", lat:36.1410316246088, long: -86.79820056777864))
      bathrooms.append(Bathroom(name: "Hank Ingram House", sub: "112, 114", lat:36.14064180934583, long: -86.79675550069267))
      
      bathrooms.append(Bathroom(name: "Hobbs", sub: "108B", lat:36.14138026047217, long: -86.79769184289314))
      bathrooms.append(Bathroom(name: "Jesup", sub: "100LA, 100LB, 200LA, 200 LB, 300LA, 300LB", lat:36.14337232395338, long: -86.79678141504799))
      bathrooms.append(Bathroom(name: "KC Potter Center", sub: "101A, 202", lat:36.14721589412824, long: -86.80489358254515))
      bathrooms.append(Bathroom(name: "Kennedy Center", sub: "208A", lat:36.14311985528902, long: -86.79947560317486))
      bathrooms.append(Bathroom(name: "Law School", sub: "Across 043", lat:36.148021318795415, long: -86.8000590042852))
      
      
      bathrooms.append(Bathroom(name: "Lewis House", sub: "016E, 104E, 107E", lat:36.140437843065804, long: -86.80580194034151))
      bathrooms.append(Bathroom(name: "Lupton House", sub: "1102A", lat:36.14520935082773, long: -86.80520504486844))
      bathrooms.append(Bathroom(name: "Mayborn", sub: "025, 026, 307, 308", lat:36.14338577130376, long: -86.79683087830725))
      bathrooms.append(Bathroom(name: "Mayborn (Connector)", sub: "113, 114, 217", lat:36.14338577130376, long: -86.79683087830725))
    
      
      bathrooms.append(Bathroom(name: "McGill Hall", sub: "105", lat:36.147704787551945, long: -86.8047596929886))
      bathrooms.append(Bathroom(name: "McGugin", sub: "185", lat:36.142568036900734, long: -86.80848042061042))
      bathrooms.append(Bathroom(name: "McTyeire Hall", sub: "115, 138", lat:36.14374194247224, long: -86.80327859800737))
      bathrooms.append(Bathroom(name: "Memorial Gym", sub: "017D, 017E", lat:36.144799176152134, long: -86.80686047737852))
      bathrooms.append(Bathroom(name: "Memorial House", sub: "108, 318", lat:36.140620264274276, long: -86.79772861026984))

      
      bathrooms.append(Bathroom(name: "Moore College", sub: "A151, A225, A207, A234, A323, A349, A423, A449, A517, A621", lat:36.1490764549211, long: -86.80237502178811))
      bathrooms.append(Bathroom(name: "Morgan House", sub: "21W, 8W, 105, 107", lat:36.140977210153, long: -86.80638589679394))
      bathrooms.append(Bathroom(name: "Murray House", sub: "103, 202", lat:36.13986704161527, long: -86.79694370442158))
      bathrooms.append(Bathroom(name: "Music Rehearsal Hall", sub: "8, 10, 114, 116", lat:36.14384654984939, long: -86.81053611737356))
      
      bathrooms.append(Bathroom(name: "Nicholas S. Zeppos College", sub: "1001, 1203, 1108", lat:36.14687429645052, long: -86.80755353792105))
      bathrooms.append(Bathroom(name: "North House", sub: "122, 226, 321, 615", lat:36.14118816926012, long: -86.79969763948556))
      bathrooms.append(Bathroom(name: "Nursing (Godchaux Hall)", sub: "119", lat:36.14487628175355, long: -86.80040217850205))
      bathrooms.append(Bathroom(name: "Old Gym", sub: "312, 313", lat:36.148374331432855, long: -86.8045801282217))
      bathrooms.append(Bathroom(name: "Owen", sub: "Library Floor 2", lat:36.14700865079749, long: -86.80006812772949))

      bathrooms.append(Bathroom(name: "Payne", sub: "3", lat:36.14236767320998, long: -86.79821920515195))
      bathrooms.append(Bathroom(name: "Peabody Administration", sub: "Cafe, 205, 206, 310B", lat:36.14195147294784, long: -86.79926376662033))

      bathrooms.append(Bathroom(name: "Residence 7", sub: "Floor 1, Floor 2", lat:36.14410794878343, long: -86.80288980409878))
      bathrooms.append(Bathroom(name: "Sarratt Student Center", sub: "300L3, 300L4", lat:36.14651088996073, long: -86.80366931363932))

      bathrooms.append(Bathroom(name: "Schulman Center for Jewish Life", sub: "Floor 2", lat:36.144712636295715, long: -86.8063661657044))
      bathrooms.append(Bathroom(name: "Stambaugh House", sub: "104, 105, 212, 312, 412, 512", lat:36.14024298298887, long: -86.79718917615241))
      bathrooms.append(Bathroom(name: "Student Life Center", sub: "133, 144, 139F, 139G", lat:36.14440353407195, long: -86.80603894708823))
      bathrooms.append(Bathroom(name: "Sutherland House", sub: "107, 212, 312, 412, 512", lat:36.13968358703425, long: -86.79747662212043))
      bathrooms.append(Bathroom(name: "University Counseling Center", sub: "Near 121A", lat:36.149504598925326, long: -86.7995997948882))

      bathrooms.append(Bathroom(name: "Vaughn Home", sub: "104, 201", lat:36.14536632857521, long: -86.80305089806582))
      bathrooms.append(Bathroom(name: "Vaughn House", sub: "4113CB", lat:36.14516157240185, long: -86.80483970238072))
      bathrooms.append(Bathroom(name: "VU Police Department", sub: "103", lat:36.14447195233251, long: -86.81161263147698))
      bathrooms.append(Bathroom(name: "Warren College", sub: "B113, B213, B225, B263, B305, B323, B371, B405, B469, B509, B569", lat:36.14966009556696, long: -86.80111078063234))
      bathrooms.append(Bathroom(name: "West House", sub: "104, 105, 214", lat:36.140416211648976, long: -86.79966568625134))
      bathrooms.append(Bathroom(name: "Women's Center", sub: "103, 212", lat:36.14703285258571, long: -86.80475889134739))


      
      
      
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

struct Bathroom{
    var name: String
    var sub: String
    var lat: Double
    var long: Double
}
var bathrooms = [Bathroom]()


