import UIKit
import Foundation

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var UIImageView: UIImageView!
    
    
    @IBAction func button(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate = self
    }
    
    @IBAction func startButton(_ sender: UIButton) {
    }

    if UIImagePickercontroller.isSourceTypeAvailable(.camera){
    image.sourceType = .camera
    self.present(image, animated: true, completion: nil)
    }else{
    print("camera not available")
    
    
    
    }
    
    imagesourceType = UIImagepickerController.SourceType.photoLibrary
    image.allowEditing = false
    self.present(image, animated: true) {
    }
    
}

func imagePickerContoller(_picker:UIImagePickerController, didFinishPickingMediaWithInfo info:
    [UIImagePickerController.InfoKey : Any]) {
    if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
    }else{
        //error
    }
    self.dismiss(animated: true, completion: nil)
}
