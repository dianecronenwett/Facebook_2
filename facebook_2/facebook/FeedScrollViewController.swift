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
         println("dresstapped")
         performSegueWithIdentifier("photoSegue", sender: sender)
    }

    //var tappedImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    
   var containerHeight = feedImage.frame.height + composeImage.frame.height
    scrollView.contentInset.bottom = 180
        
   scrollView.delegate = self
        scrollView.contentSize.height = containerHeight
       
    }
   
    //Add prepare for segue here
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var tappedGesture = sender as UITapGestureRecognizer
        var destinationViewController = segue.destinationViewController as PhotoViewController
        
     var tappedImageView = tappedGesture.view as UIImageView
    
       destinationViewController.image = tappedImageView.image
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer!, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer!) -> Bool {
        return true
    }

   
}
