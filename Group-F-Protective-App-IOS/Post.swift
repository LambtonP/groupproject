//
//  Post.swift
//  Group-F-Protective-App-IOS
//
//  Created by Simran Chakkal on 2019-11-21.
//  Copyright © 2019 Simran Chakkal. All rights reserved.
//

import Foundation
import  UIKit
import  Firebase
import FirebaseStorage
import SwiftyJSON
class  Post {
    var imageDownloadUrl: String?
    private var image: UIImage!
    init(image: UIImage) {
        self.image = image
    }
    init(snapshot: DataSnapshot) {
        let json = JSON(snapshot.value)
        self.imageDownloadUrl = json["imageDownloadURL"].stringValue
    }
    
    func save(){
        //1. create a new database reference
        let newPostRef = Database.database().reference().child("photoposts").childByAutoId()
        let newPostkey = newPostRef.key
        if let imageData = self.image.jpegData(compressionQuality: 0.6){
            //2. create a new storage reference
                 let imagesstorageRef = Storage.storage().reference().child("images")
                 let newimageRef = imagesstorageRef.child(newPostkey!)
                 //3. save the image to the storage
            newimageRef.putData(imageData, metadata: nil){ (metadata, error) in
            guard let metadata = metadata else {
              // Uh-oh, an error occurred!
              return
            }
              // Metadata contains file metadata such as size, content-type.
              let size = metadata.size
              // You can also access to download URL after upload.
              newimageRef.downloadURL { (url, error) in
                guard url != nil else {
                  // Uh-oh, an error occurred!
                  return
                }
               }
               let newPostDictionary = ["imageDownloadUrl" : self.imageDownloadUrl]
                newPostRef.setValue(newPostDictionary)
            }
        }
     
    }
}

