//
//  FeedScrollViewController.swift
//  facebook
//
//  Created by diane cronenwett on 10/9/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class FeedScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       scrollView.contentSize = CGSize(width: 320, height: 1071)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
