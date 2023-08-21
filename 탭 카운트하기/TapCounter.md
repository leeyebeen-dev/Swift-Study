
# 탭 카운트하기

### [1] 라이브러리에서 스택뷰(Vertical Stack View)를 스토리보드에 드래그하기

---

### [2] 라이브러리에서 레이블을 스토리보드에 드래그하기

레이블 더블클릭으로 텍스트를 변경해준다.
레이블 내 텍스트 사이즈를 변경한다.

---

### [3] 스택 뷰의 제약 조건 설정하기

1. 스택 뷰 클릭하기
2. 하단에 제약 조건 아이콘 클릭하기
3. 제약 조건을 입력하고
4. Add 2 Constraints 버튼 클릭하기

---

### [4] 코드 작성하기

```swift
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

```

---

### [ 결과화면 ]

<img width="519" alt="스크린샷 2023-08-21 오전 10 21 29" src="https://github.com/leeyebeen-dev/Swift-Study/assets/84004751/c66e287b-048f-4767-8151-9317f8d0a654">


