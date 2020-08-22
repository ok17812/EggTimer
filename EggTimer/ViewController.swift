//
//  ViewController.swift
//  EggTimer
//
//  Created by Evan Chang on 8/22/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBOutlet weak var TitleLabel: UILabel!
    let EggTime = ["Soft": 300, "Medium": 420, "Hard" : 720]
    var count = 10
    var timer = Timer()
    var TotalTime = 4
    //var Bar = 0
    @IBAction func HardnessSelected(_ sender: UIButton) {
        ProgressBar.progress = 0
        timer.invalidate()
        let hardness = sender.currentTitle!
    //print(hardness!)
        TotalTime = EggTime[hardness]!
        count =  EggTime[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)

    }

    @objc func update() {
        if(count > 0) {
            TitleLabel.text = "Counting Down, \(count) seconds left"
            print("\(count) seconds.")
            ProgressBar.progress += Float(1)/Float(TotalTime)
            count -= 1
            
            
        }
            else {
                TitleLabel.text = "Done"
            }
        }
}
    
