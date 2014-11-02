//
//  logInViewController.swift
//  facebook
//
//  Created by diane cronenwett on 10/14/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class logInViewController: UIViewController {

    @IBOutlet weak var activityIcon: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
   
    //Animates the activity icon
    @IBAction func onLoginButton(sender: AnyObject) {
        loginButton.selected = true
        activityIcon.startAnimating()
        
        delay(2, closure: { () -> () in
                self.activityIcon.stopAnimating()
                self.loginButton.selected = false
            
            if (self.emailField.text == "d" && self.passwordField.text == "h") {
                self.performSegueWithIdentifier("app_segue", sender: self)
                
            }
            
            
           })
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //this is in a class not in another function
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
