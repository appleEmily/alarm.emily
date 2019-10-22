//
//  AlarmViewController.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/15.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class AlarmViewController: UIViewController {
    
    var currentTime = CurrentTime()
    var recievedalarm = Alarm()
        
        //ViewController().alarm
    let Time = CurrentTime()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func stopBtn(_ sender: Any) {

        dismiss(animated: true, completion: nil)
            recievedalarm.stopTimer()
    }

    func updateTime(_ time:String) {

        timeLabel.text = currentTime.time
    }
    
}

