# Alert 사용하기

### [1] 새 프로젝트를 만들고 이미지를 추가하기

---

### [2] 이미지 뷰 추가하기

스토리보드에 이미지 뷰를 추가한다.
이미지의 원본 비율을 유지하기 위해서 Content Mode fmf [Aspect Fit]로 수정한다.

---

### [3] 버튼 추가하기

'끄기'와 '켜기' 버튼을 추가한다.

---

### [4] 이미지 뷰에 아웃렛 변수 추가하기

---

### [5] 버튼에 대한 액션 함수 추가하기

Alert 생성 방법
1. UIAlertController 생성
2. UIAlertAction 생성
3. lampOnAlert에 onAction 추가
4. present 메서드 실행

```swift
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
```
