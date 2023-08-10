//
//  ViewController.swift
//  imageView
//
//  Created by 이예빈 on 2023/08/10.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false // 확대 여부를 나타내는 변수
    var imgLight: UIImage?
    
    @IBOutlet var btnResize: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgLight = UIImage(named: "gosimImage.jpeg")
        imgView.image = imgLight
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if(isZoom){ //true
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else{ //false
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
}

