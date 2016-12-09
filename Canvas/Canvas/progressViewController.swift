//
//  progressViewController.swift
//  GeometryFighter
//
//  Created by kaiyue wang on 12/3/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class progressViewController: UIViewController {

    var time : Float = 0.0
    var timer: NSTimer?
    
    @IBOutlet weak var progressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do stuff
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:#selector(progressViewController.setProgress), userInfo: nil, repeats: true)
        
    }//close viewDidLoad
    
    func setProgress() {
        time += 0.1
        progressView.progress = time / 3
        if time >= 3 {
            timer!.invalidate()
            let vc = self.storyboard?.instantiateViewControllerWithIdentifier("test") as! GameViewController
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }
    
}
