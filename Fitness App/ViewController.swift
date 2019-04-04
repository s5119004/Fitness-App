import UIKit
import MapKit

class MapViewController: UIViewController {
    
    let locationManager=CLLocationManager()

    var hasPutPoints = false
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MapView.userTrackingMode = .follow
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
    }
    
    func generatePoints(from location: CLLocation)
        
    let coordinates = getRandomCoordinates(from: location, itemCount: 3)
    
    for coordinates in coordinates {
    let title = "Distance: \(getDistance(from: location, to: coordinate))k"
        let annotationOne = CustomAnnotation(coordinate: coordinate, title: title)
        MapView.addAnnotation(annotationOne)
        MapView.showAnnotations(MapView.annotations, animated: false)
    }
 }
    func getDistance(from: CLLocation, to: CLLocationCoordinate2D) -> CLLocationDistance {
     let coordinateLocation = CLLocation(latitude: to.latitude, longitude: to.longitude)
     return from.distance(from: coordinateLocation)/1000
    }
    
    
    

        
        
        
    }


}

extension MapViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

