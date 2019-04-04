import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var UIImageView: UIImageView!
    
    
    @IBAction func button(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            image.sourceType = .camera
            self.present(image, animated: true, completion: nil)
        }else{
            print("camera not available")
    }
    
    //@IBAction func startButton(_ sender: UIButton) {
    }
    
    //imagesourceType = UIImagePickerController.SourceType.photoLibrary
    //image.allowsEditing = false
    //self.present(image, animated: true) {
    }
    
//}

//func imagePickerContoller(_picker:UIImagePickerController, didFinishPickingMediaWithInfo info:
    //[UIImagePickerController.InfoKey : Any]) {
    //if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      //  ImageControl.image = image
   // }else{
        //error
   // }
    //self.dismiss(animated: true, completion: nil)
//}
