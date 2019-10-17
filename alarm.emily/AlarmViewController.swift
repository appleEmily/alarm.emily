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
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func stopBtn(_ sender: Any) {
        alarm.stopTimer()
        
        dismiss(animated: true, completion: nil)
    }
    func updateTime(_ time:String) {
        timeLabel.text = time
    }
    
}

