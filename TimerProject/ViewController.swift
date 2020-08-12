//
//  ViewController.swift
//  TimerProject
//
//  Created by Bahriye Begum Ultan Gungor on 12.08.2020.
//  Copyright © 2020 Bahriye Begum Ultan Gungor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        timeLabel.text = "Timer : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        timeLabel.text = "Timer : \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's over"
        }
    }
    
   /* override func viewDidAppear(_ animated: Bool) {
        for time in 1 ... 10 {
            counter = counter - 1
            timeLabel.text = "Time : \(counter)"
            Thread.sleep(forTimeInterval: 1)
        }
    }*/

    @IBAction func buttonClicked(_ sender: Any) {
        print("Button clicked")
    }
    
    
    
    
    
}

