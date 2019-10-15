//
//  Alarm.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/15.
//  Copyright © 2019 emily.com. All rights reserved.
//

import Foundation

class Alarm {
    var selectedWakeUpTime:Date?
    var audioPlayer: AVAudioPlayer!
    var sleepTimer: Timer?
    var seconds = 0
    
    func runTimer(){
        seconds = calculatInterval(userAwakeTime: selectedWakeUpTime!)
        if sleepTimer == nil {
            sleepTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    
}
