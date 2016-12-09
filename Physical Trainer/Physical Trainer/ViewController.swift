//
//  ViewController.swift
//  Physical Trainer
//
//  Created by kaiyue wang on 12/5/16.
//  Copyright © 2016 kaiyuewang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
//    @IBAction func finishButton(_ sender: Any) {
//        self.button.setBackgroundImage(UIImage(named:"HeartBeat1"), for: UIControlState.normal)
//    }
  //  @IBOutlet weak var mylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = UIColor.white
       // incrementLabel(to: 100)
                // Do any additional setup after loading the view, typically from a nib.
    button.addTarget(self, action: #selector(ViewController.buttonaction), for: UIControlEvents.touchUpInside)

    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func buttonaction(){
        if(self.button.isSelected == false){
        let animate = UIImage.animatedImageNamed("HeartBeat", duration: 1.5)
        self.button.setBackgroundImage(animate, for: UIControlState.normal)
        }
        else{
            self.button.setBackgroundImage(UIImage(named:"HeartBeat1"), for: UIControlState.normal)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "loading")
            present(vc!, animated: true, completion: nil)
        }
        button.isSelected = !button.isSelected


        
    }
/*
    func incrementLabel(to endValue: Int) {
        let animationPeriod: Double = 1.5 //seconds
        let sleepTime = UInt32(animationPeriod * 10000.0)
        DispatchQueue.global().async {
            for i in 0 ..< (endValue + 1) {
                usleep(sleepTime)
                DispatchQueue.main.async {
                    self.mylabel.text = "\(i)"
                }
            }
        }
    }*/

}

