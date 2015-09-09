//
//  ViewController.swift
//  Camera
//
//  Created by Naoki Toyosato on 2015/09/09.
//  Copyright (c) 2015年 Naoki Toyosato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func launchCamera(sender: UIBarButtonItem) {
        let camera  = UIImagePickerControllerSourceType.Camera
        
        if UIImagePickerController.isSourceTypeAvailable(camera){
            let picker = UIImagePickerController()
            picker.sourceType = camera
            picker.delegate = self
            self.presentViewController(picker, animated:true,completion:nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, info: [NSObject : AnyObject]!) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

