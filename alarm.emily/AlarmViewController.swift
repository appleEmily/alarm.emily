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
        dismiss(dismiss(animated: true, completion: nil))
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
