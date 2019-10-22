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
    
    override func viewDidAppear(_ animated: Bool) { //AlarmでsleepTimerがnilじゃない場合
        if alarm.sleepTimer != nil{
            //再生されているタイマーを止める
            Alarm().stopTimer()
        }
    }
    
    @IBAction func alarmWasSet(_ sender: Any) {
        alarm.selectedWakeUpTime = sleepTimepicker.date
        alarm.runTimer()
        
        performSegue(withIdentifier: "setToSleeping", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "setToSleeping" {
            let svc = segue.destination as? AlarmViewController
            svc?.recievedalarm = alarm
        }
    }
}

