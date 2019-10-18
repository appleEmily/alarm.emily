//
//  Alarm.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/15.
//  Copyright © 2019 emily.com. All rights reserved.
//

import Foundation
import AVFoundation

class Alarm {
    var selectedWakeUpTime:Date?
    var audioPlayer: AVAudioPlayer!
    var sleepTimer: Timer?
    var seconds = 0
    
    func runTimer(){
        seconds = calculateInterval(userAwakeTime: selectedWakeUpTime!)
        if sleepTimer == nil {
            sleepTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
    }
    @objc private func updateTimer(){
        if seconds != 0{
            seconds -= 1
        } else {
            //elseはsleepTimer == 0
            //タイマーを止める。
            sleepTimer?.invalidate()
            sleepTimer = nil
            do {
                let soundName: String = "port1"
                let type: String! = "mp3"
                let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
                
                let fileURL = URL(fileURLWithPath: soundFilePath)
                
                audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
                try AVAudioSession.sharedInstance().setActive(true)
            } catch {
                print("could not load file")
            }
            
            audioPlayer.play()
        }
    }
    private func calculateInterval(userAwakeTime:Date)-> Int{
        var interval = Int(userAwakeTime.timeIntervalSinceNow)
        if interval < 0{
            interval = 86400 - (0 - interval)
        }
        let calendar = Calendar.current
        let seconds = calendar.component(.second, from: userAwakeTime)
        return interval - seconds
    }
    
    func stopTimer(){
        
        if sleepTimer != nil {
            sleepTimer?.invalidate()
            sleepTimer = nil
        }
        else {
            audioPlayer.stop()
            
        }
        
    }
}
