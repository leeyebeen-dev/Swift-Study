//
//  ViewController.swift
//  date-picker
//
//  Created by 이예빈 on 2023/08/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        lblPickerTime.text = "선택시간 : "+formatter.string(from: datePickerView.date)
    }
    
}

