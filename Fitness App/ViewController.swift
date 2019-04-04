import UIKit
import MapKit

class ViewController: UIViewController {
    
    let locationManager=CLLocationManager()

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MapView.userTrackingMode = .follow

        MapView.showAnnotations(MapView.annotations, animated: false)
       
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()


        
        
        
    }


}

extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

