//
//  ViewController.swift
//  alarm.emily
//
//  Created by 野崎絵未里 on 2019/10/14.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alarm = Alarm()
    @IBOutlet weak var sleepTimepicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sleepTimepicker.datePickerMode = UIDatePicker.Mode.time
        sleepTimepicker.setDate(Date(), animated: false)
        // Do any additional setup after loading the view.
    }
    @IBAction func alarmWasSet(_ sender: Any) {
    }
    

}

