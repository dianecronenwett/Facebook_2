//
//  MoreViewController.swift
//  facebook
//
//  Created by diane cronenwett on 10/9/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var moreScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        moreScroll.contentSize = CGSize(width: 320, height: 1500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
