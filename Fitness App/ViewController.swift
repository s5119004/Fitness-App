import UIKit
import MapKit

class ViewController: UIViewController {
    
    let locationManager=CLLocationManager()

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MapView.delegate = self
        MapView.showAnnotation(MapView.annotations, animated, false)
       
        
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()

        let  = CLLocationCoordinate2D(latitude: 51.490929, longitude: -0.127715)
        let  = CLLocationCoordinate2D(latitude: 51.508804, longitude: -0.127544)
        let  = CLLocationCoordinate2D(latitude: 51.507487, longitude: -0.099561)
        let  = CLLocationCoordinate2D(latitude: 51.49069, longitude: -0.158916)
        let  = CLLocationCoordinate2D(latitude: 51.496696, longitude: -0.17243)
        
        let TateBritainMuseumAnnotation = CustomAnnotation(coordinate: TateBritainMuseumCoordinate, title: "")
        let TheNationalGalleryAnnotation = CustomAnnotation(coordinate: TheNationalGalleryCoordinate, title: "")
        let TateModernMuseumAnnotation = CustomAnnotation(coordinate: TateModernMuseumCoordinate, title: "")
        let SaatchiGalleryAnnotation = CustomAnnotation(coordinate: SaatchiGalleryCoordinate, title: "")
        let VictoriaAndAlbertMuseumAnnotation = CustomAnnotation(coordinate: VictoriaAndAlbertMuseumCoordinate, title: "")
        
        
        
    }


}

extension ViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.last!)
    }
}

