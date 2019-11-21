//
//  PostsViewController.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-21.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import UIKit

class PostsViewController: UIViewController{

    @IBOutlet var imageview: UIImageView!
    var imagePicker: UIImagePickerController!
       var Takenimage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        //show the camera
             imagePicker = UIImagePickerController()
        imagePicker.delegate = self
                  if UIImagePickerController.isSourceTypeAvailable(.camera){
                                imagePicker.sourceType = .camera
                                           
                            }
                            else {
                      imagePicker.sourceType = .photoLibrary
                            }
                   self.present(imagePicker,animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savepost(_ sender: Any) {
//        if Takenimage != nil{
//              let newPost = Post(image: Takenimage)
//                newPost.save()
//                self.dismiss(animated: true, completion: nil)
//            }
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension PostsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
         let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.Takenimage = image
        self.imageview.image = self.Takenimage
               self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}
