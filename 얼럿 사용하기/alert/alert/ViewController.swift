//
//  ViewController.swift
//  alert
//
//  Created by 이예빈 on 2023/08/14.
//

import UIKit

class ViewController: UIViewController {
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.jpg")
    var isLampOn = true
    
    
    @IBOutlet var lampimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampimg.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn == true){
            let lampOffAlert = UIAlertController(title: "알림", message: "이미 램프가 켜져있습니다.", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            
            present(lampOffAlert, animated: true, completion: nil)
            
            isLampOn = true
        }
        else{
            let lampOnAlert = UIAlertController(title: "알림", message: "램프를 켜겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let OnAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampimg.image = self.imgOn
                self.isLampOn = true
            })
            let cancelAction = UIAlertAction(title: "아니요", style: UIAlertAction.Style.default, handler: nil)
            
            lampOnAlert.addAction(OnAction)
            lampOnAlert.addAction(cancelAction)
            
            present(lampOnAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if(isLampOn==false){
            let lampOnAlert = UIAlertController(title: "알림", message: "이미 램프가 꺼져있습니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            
            present(lampOnAlert, animated: true, completion: nil)
            
            isLampOn = false
        }
        else {
            let lampOffAlert = UIAlertController(title: "알림", message: "램프를 끄겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.lampimg.image = self.imgOff
                self.isLampOn = false
            })
            
            let cancelAction = UIAlertAction(title: "아니요", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
}

