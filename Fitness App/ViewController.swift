import UIKit
import MapKit

class ViewController: UIViewController {
    
    let locationManager=CLLocationManager()

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MapView.delegate = self
        MapView.showAnnotations(MapView.annotations, animated, false)
       
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()

<<<<<<< HEAD
        
=======
        let locationOneCoordinate = CLLocationCoordinate2D(latitude: 50.713792, longitude: -1.874537)
        let locationTwoCoordinate = CLLocationCoordinate2D(latitude: 50.718349, longitude: -1.842870)
        let locationThreeCoordinate = CLLocationCoordinate2D(latitude: 50.717936, longitude: -1.866509)
        let locationFourCoordinate = CLLocationCoordinate2D(latitude: 50.718710, longitude: -1.877140)
        let locationFiveCoordinate = CLLocationCoordinate2D(latitude: 50.723903, longitude: -1.888981)
        
        let locationOneAnnotation = CustomAnnotation(coordinate: locationOneCoordinate, title: "locationOne")
        let locationTwoAnnotation = CustomAnnotation(coordinate: locationTwoCoordinate, title: "locationTwo")
        let locationThreeAnnotation = CustomAnnotation(coordinate: locationThreeCoordinate, title: "locationThree")
        let locationFourAnnotation = CustomAnnotation(coordinate: locationFourCoordinate, title: "locationFour")
        let locationFiveAnnotation = CustomAnnotation(coordinate: locationFiveCoordinate, title: "locationFive")
>>>>>>> 032dcbd2068c397da631272e553edbde6d5f2182
        
        MapView.addAnnotations([locationOneAnnotation, locationTwoAnnotation, locationThreeAnnotation,locationFourAnnotation,locationFiveAnnotation])
        
    }


}

extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

