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

        let BournemouthPier = CLLocationCoordinate2D(latitude: 50.713792, longitude: -1.874537)
        let BoscombePier = CLLocationCoordinate2D(latitude: 50.718349, longitude: -1.842870)
        let RedArrowsMemorial = CLLocationCoordinate2D(latitude: 50.717936, longitude: -1.866509)
        let BournemouthLowerGarderns = CLLocationCoordinate2D(latitude: 50.718710, longitude: -1.877140)
        let bournemouthCentreGardens = CLLocationCoordinate2D(latitude: 50.723903, longitude: -1.888981)
        
        let TateBritainMuseumAnnotation = CustomAnnotation(coordinate: TateBritainMuseumCoordinate, title: "BournemouthPier")
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

