//
//  SplashViewController.swift
//  FoodTracker
//
//  Created by Jean-Michel Lemieux on 2016-04-26.
//  Copyright © 2016 Jean-Michel Lemieux. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var splashImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        self.splashImageView.image = UIImage(named: "splash")!
        
        // Show the home screen after a bit. Calls the show() function.
        NSTimer.scheduledTimerWithTimeInterval(
            3, target: self, selector: #selector(SplashViewController.show), userInfo: nil, repeats: false
        )
        
        UIView.animateWithDuration(
                            3,
                            delay: 0,
                            usingSpringWithDamping: 0.2,
                            initialSpringVelocity: 15.0,
                            options: UIViewAnimationOptions.AllowUserInteraction,
            animations: {
                            self.splashImageView.transform = CGAffineTransformMakeScale(2.0, 2.0)
                        },
            completion: { finish in
                            //self.splashImageView.transform = CGAffineTransformMakeScale(10.0, 10.0)
                        }
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
