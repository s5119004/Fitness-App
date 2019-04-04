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


}

extension MapViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

