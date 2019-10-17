
//
//  currentTime.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/15.
//  Copyright © 2019 emily.com. All rights reserved.
//

import Foundation

class CurrentTime {
    var timer: Timer?
    var currentTime: String?
    var df = DateFormatter()
    weak var delegate: AlarmViewController?
    init() {
        if timer == nil{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCurrentTime), userInfo: nil, repeats: true)
        }
    }
    @objc private func updateCurrentTime() {
        df.dateFormat = "HH:mm"
        df.timeZone = TimeZone.current
        //現在の時間をフォーマットに従って文字列化を行う
        let timezoneDate = df.string(from: Date())
        currentTime = timezoneDate
        self.delegate?.updateTime(currentTime!)
    }
    
}
