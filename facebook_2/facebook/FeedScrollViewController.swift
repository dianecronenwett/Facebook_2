//
//  FeedScrollViewController.swift
//  facebook
//
//  Created by diane cronenwett on 10/9/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class FeedScrollViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var blackDressImage: UIImageView!
    @IBAction func OnPhotoTap(sender: UITapGestureRecognizer) {
        println("hi")
    }
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        scrollView.contentSize = CGSize (width: 320, height:feedImage.frame.height
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
