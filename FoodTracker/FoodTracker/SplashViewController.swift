//
//  SplashViewController.swift
//  FoodTracker
//
//  Created by Jean-Michel Lemieux on 2016-04-26.
//  Copyright © 2016 Jean-Michel Lemieux. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.redColor()
        
        // Show the home screen after a bit. Calls the show() function.
        NSTimer.scheduledTimerWithTimeInterval(
            2.5, target: self, selector: #selector(SplashViewController.show), userInfo: nil, repeats: false
        )
    }
    
    /*
     * Gets rid of the status bar
     */
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    /*
     * Shows the app's main home screen.
     * Gets called by the timer in viewDidLoad()
     */
    func show() {
        self.performSegueWithIdentifier("showApp", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
