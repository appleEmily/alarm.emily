//
//  AlarmViewController.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/15.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController {
    
    let recievedTime = CurrentTime()
    var recievedalarm = Alarm()
    //var currentTime:String!
        
        //ViewController().alarm
    let Time = CurrentTime()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nowTime = recievedTime.currentTime
        timeLabel.text = nowTime
        print(nowTime)
    }

    @IBAction func stopBtn(_ sender: Any) {

        dismiss(animated: true, completion: nil)
            recievedalarm.stopTimer()
    }

//    func updateTime(_ time:String) {
//
//        timeLabel.text = time
//        print(time)
//    }
    
}

