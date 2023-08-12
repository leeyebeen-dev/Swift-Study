# Timer 타이머 작동시키기

### [1] 레이블 추가하기

---

### [2] 레이블 꾸미기

레이블을 선택하면 오른쪽에 인스펙터 창이 나온다. 이때 Color에서 Custom을 클릭하면 원하는 색을 팔레트에서 선택할 수 있다. Font에서 폰트 종류와 사이즈를 지정할 수 있다.

---

### [3] 필요한 상수와 변수를 선언하기

```swift
let timeSelector : Selector = #selector(ViewController.updateTime)
let interval = 1.0
var count = 0
```

- 타이머가 구동되면 실행할 함수를 지정한다.
- interval : 타이머의 간격 값이다. 1.0은 1초를 의미한다.
- count : 타이머가 설정할 간격대로 실행되는지 확인하기 위한 변수이다.

---

### [4] 레이블에 대한 아울렛 변수 추가하기

레이블을 오른쪽 마우스로 누른 채 위치에 끌어놓는다.

---

### [5[ 액션 함수 추가하기

```swift
override func viewDidLoad(){
  super.viewDidLoad()

  Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
}

@objc func updateTime(){
  lblTimer.text = String(count)
  count = count + 1
}
```

- viewDidLoad 함수에 타이머를 설정했다. scheduledTimer 함수를 사용했다. 각 인수는 (timeInterval : 간격, target : 동작될 view, selector : 타이머가 구동될 때 실행할 함수, userInfo : 사용자 정보, repeats : 반복 여부) 의미를 나타낸다.
