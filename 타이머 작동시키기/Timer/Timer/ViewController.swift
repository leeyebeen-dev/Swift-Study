//
//  ViewController.swift
//  Timer
//
//  Created by 이예빈 on 2023/08/12.
//

import UIKit

class ViewController: UIViewController {

    let timeSelector : Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lblTimer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @objc func updateTime(){
        lblTimer.text = String(count)
        count = count + 1
    }
    
    
}

