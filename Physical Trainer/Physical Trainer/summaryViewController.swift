//
//  summaryViewController.swift
//  Physical Trainer
//
//  Created by kaiyue wang on 12/6/16.
//  Copyright © 2016 kaiyuewang. All rights reserved.
//

import UIKit

class summaryViewController: UIViewController {
    //var score:[datascore] = []
//    @IBAction func score(_ sender: Any) {
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "leader") as! leaderboardTableViewController
//        var i = 0
//        var position = 0
//        print (vc.score.count)
//        while i < vc.score.count{
//            print("here")
//            if vc.score[i].score < number2{
//                vc.score.insert(datascore(name: number2)!, at: i)
//                position = i + 1
//            }
//            i = i + 1
//        }
//        if vc.score.count == 0{
//            vc.score.append(datascore(name: number2)!)
//            
//            position = 1
//        }
//       print(vc.score.count)
//       // print(position)
//        present(vc, animated: true, completion: nil)
//
//    }
    var number2 = 0
    @IBOutlet weak var average: UILabel!

    @IBOutlet weak var Frequency: UILabel!
    @IBOutlet weak var maxPunch: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let number1 = arc4random_uniform(51)+50
        number2 = Int(arc4random_uniform(20) + number1 + 10)
        let number3 = arc4random_uniform(100) + 60
        incrementLabel(endValue: Int(number1),test: average)
        incrementLabel(endValue: number2, test: maxPunch)
        incrementLabel(endValue: Int(number3), test: Frequency)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func incrementLabel(endValue: Int, test: UILabel) {
        let animationPeriod: Double = 1.5 //seconds
        let sleepTime = UInt32(animationPeriod * 10000.0)
        DispatchQueue.global().async {
            for i in 0 ..< (endValue + 1) {
                usleep(sleepTime)
                DispatchQueue.main.async {
                    test.text = "\(i)"
                }
            }
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        if (segue.identifier == "showscore"){
//        let vc = segue.destination as! leaderboardTableViewController
//        let newEntry = datascore(name: number2)
//        var i = 0
//        var position = 0
//        print (score.count)
//                    //print (vc.score.count)
//        if score.count == 0{
//            score.append(newEntry!)
//            position = 1
//            }
//        else{
//            while i < score.count{
//                print("here")
//                if score[i].score < number2{
//                    score.insert(newEntry!, at: i)
//                    position = i + 1
//                    break
//                }
//                i = i + 1
//                if i >= score.count{
//                    score.append(newEntry!)
//                    break
//                }
//            }
//            }
//            vc.score = score
//
//        }
}
