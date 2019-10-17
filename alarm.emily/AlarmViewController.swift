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
    let alarm = Alarm()
    let Time = CurrentTime()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    override func viewWillDisappear(_ animated: Bool) {
//        //alarm.audioPlayer.stop()
//        if alarm.sleepTimer != nil{
//            alarm.sleepTimer?.invalidate()
//            alarm.audioPlayer.stop()
//            alarm.sleepTimer = nil
//
//            //alarm.stopTimer()
//        }
//    }
    @IBAction func stopBtn(_ sender: Any) {
    
        alarm.audioPlayer.stop()
        //alarm.setAudioPlayer()
        dismiss(animated: true, completion: nil)
    }
    func updateTime(_ time:String) {
        
        timeLabel.text = time
    }
    
}

