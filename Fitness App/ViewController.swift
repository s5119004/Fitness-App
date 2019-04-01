import UIKit
import MapKit

class ViewController: UIViewController {
    
    let locationManager=CLLocationManager()

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()

        let locationOneCoordinate = CLLocationCoordinate2D(latitude: 51.490929, longitude: -0.127715)
        let locationTwoCoordinate = CLLocationCoordinate2D(latitude: 51.508804, longitude: -0.127544)
        let locationThreeCoordinate = CLLocationCoordinate2D(latitude: 51.507487, longitude: -0.099561)
        let locationFourCoordinate = CLLocationCoordinate2D(latitude: 51.49069, longitude: -0.158916)
        let locationFiveCoordinate = CLLocationCoordinate2D(latitude: 51.496696, longitude: -0.17243)
        
        let locationOneAnnotation = CustomAnnotation(coordinate: locationOneCoordinate, title: "locationOne")
        let locationTwoAnnotation = CustomAnnotation(coordinate: locationTwoCoordinate, title: "locationTwo")
        let locationThreeAnnotation = CustomAnnotation(coordinate: locationThreeCoordinate, title: "locationThree")
        let locationFourAnnotation = CustomAnnotation(coordinate: locationFourCoordinate, title: "locationFour")
        let locationFiveAnnotation = CustomAnnotation(coordinate: locationFiveCoordinate, title: "locationFive")
        
        MapView.addAnnotations([locationOneAnnotation, locationTwoAnnotation, locationThreeAnnotation,locationFourAnnotation,locationFiveAnnotation])
        
    }


}

extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

