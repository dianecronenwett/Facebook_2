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
    @IBOutlet weak var composeImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var blackDressImage: UIImageView!
    @IBAction func onDressTap(sender: UITapGestureRecognizer) {
        //println("dresstapped")
         performSegueWithIdentifier("blackDressSegue", sender: self)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

   var containerHeight = feedImage.frame.height + composeImage.frame.height
    scrollView.contentInset.bottom = 180
        
   scrollView.delegate = self
        scrollView.contentSize.height = containerHeight
       
    }
   
    //Add prepare for segue here
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer!, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer!) -> Bool {
        return true
    }

   
}
