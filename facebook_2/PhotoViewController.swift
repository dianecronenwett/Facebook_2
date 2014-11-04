//
//  PhotoViewController.swift
//  facebook
//
//  Created by diane cronenwett on 11/3/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var dynamicImageView: UIImageView!
  
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       dynamicImageView.image = image
      }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Add scrollview Height
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
