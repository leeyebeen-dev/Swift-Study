//
//  ViewController.swift
//  TapCounter
//
//  Created by 이예빈 on 2023/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtTapCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        txtTapCount.text = String(touch.tapCount)
    }

}

