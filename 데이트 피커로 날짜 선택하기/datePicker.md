# 데이트 피커로 날짜 선택하기

### [1] 데이트 피커 추가하기

### [2] 레이블 추가하기

### [3] 레이블에 대한 아웃렛 변수 추가하기

### [4] 데이트 피커에 대한 액션 함수 추가하기

### [5] 동작 코드 작성하기

```swift
class ViewController: UIViewController{
  @IBOutlet var lblPickerTime: UILabel!

  override func viewDidLoad(){
    super.viewDidLoad()
  }

  @IBAction func changeDatePicker(_sender: UIDatePicker){
    let datePickerView = sender
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm EEE" //dateFormat 속성 지정
    lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
  }
}
```

1. 이 함수가 호출되면서 sender라는 UIDatePicker 자료형의 인수가 전달된다. 이 sender를 datePickerView라는 상수에 저장한다.
2. 날짜를 출력하기 위하여 DateFormatter라는 클래스 상수 formatter를 선언한다.

### 결과화면

<img width="519" alt="스크린샷 2023-08-11 오전 10 31 06" src="https://github.com/leeyebeen-dev/Swift_Study/assets/84004751/f7ad3cde-cee6-4197-af69-5cf97c13443f">
