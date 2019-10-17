//
//  ViewController.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/14.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let alarm = Alarm()
    @IBOutlet weak var sleepTimepicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sleepTimepicker.datePickerMode = UIDatePicker.Mode.time
        sleepTimepicker.setDate(Date(), animated: false)
        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        if alarm.sleepTimer != nil {
//            alarm.sleepTimer?.invalidate()
//            alarm.audioPlayer.stop()
//            alarm.sleepTimer = nil
//            //alarm.audioPlayer.stop()
//            //        if alarm.sleepTimer != nil{
//            //            alarm.stopTimer()
//            //        }
//        }
//    }
    @IBAction func alarmWasSet(_ sender: Any) {
        alarm.selectedWakeUpTime = sleepTimepicker.date
        alarm.runTimer()
        performSegue(withIdentifier: "setToSleeping", sender: nil)
    }
    
    
}

