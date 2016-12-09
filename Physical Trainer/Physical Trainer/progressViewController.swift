//
//  progressViewController.swift
//  Physical Trainer
//
//  Created by kaiyue wang on 12/6/16.
//  Copyright © 2016 kaiyuewang. All rights reserved.
//

import UIKit

class progressViewController: UIViewController {

    var time : Float = 0.0
    var timer: Timer?
    
    @IBOutlet weak var progressView: UIProgressView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do stuff
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(progressViewController.setProgress), userInfo: nil, repeats: true)
        
    }//close viewDidLoad
    
    func setProgress() {
        time += 0.1
        progressView.progress = time / 3
        if time >= 3 {
            timer!.invalidate()
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "test") as! summaryViewController
            self.present(vc, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
