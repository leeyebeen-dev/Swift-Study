# 상수와 변수 선언

```swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```

상수의 경우 let 카워드를 이용하여 선언할 수 있고, 변수의 경우 var 키워드를 사용하여 선언할 수 있다.
한 줄에 하나의 변수를 선언하거나 한 줄에 여러 변수를 선언할 수 있다.

---

# 자료형

Swift는 자료형의 자동 할당을 지원한다. 따라서 변수의 자료형을 명시하지 않고도 사용할 수 있다.
(명시된 자료형이 생각보다 중요함)

Swift의 경우 자동 할당을 지원하지만 Python과는 다르게 한 번 자료형이 할당된 이후에는 변수의 자료형이 고정된다.

```swift
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double
```

---

# String Interpolation

Swift에서도 Python의 Format과 유사한 방식으로 변수를 출력문에 포함시킬 수 있다. Swift는 \()을 사용한다.

```swift
print("The current value is \(welcomeMessage)")
```

---

# Type Alais

Swift에서도 자료형의 별명을 정의할 수 있는 키워드를 제공한다. Swift는 typealias를 사용하여 자료형의 별명을 정의할 수 있다.

```swift
typealias AudioSample = UInt16
```

---

# 튜플

Swift도 튜플 자료형을 지원한다. 튜플은 ()를 통해서 값을 표현한다. 그리고 변수에 값을 할당할 때, 만약 2개의 다른 변수에 하나의 튜플 값을 각각 할당해주고 싶다면 아래와 같이 할 수 있다.

```swift
let http404Error: (Int, String) = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
```

그리고 만약 튜플에서 하나의 값만 변수에 할당해주고 싶다면, 아래와 같이 사용할 수 있다.

```swift
let (justTheStatusCode, _) = http404Error
```

Swift의 튜플은 더 많은 값을 가질 수 있다.

```swift
let james = ("James", "Male", "010-1234-5678")
```

같은 개수의 값과 자료형을 가진 튜플들의 경우 대소비교가 가능한데, 이 경우 왼쪽부터 오른쪽까지 값을 하나씩 비교한다.

```swift
print((1, "zebra", -1) < (2, "apple", -1)) // true
print((3, "apple") < (3, "bird")) // true
print((4, "dog") == (4, "dog")) // true

print(("blue", false) < ("purple", true)) // error!
```

단, 대소비교가 불가능한 값이 있을 경우 (아무리 해당 값에 도착하기 전에 대소비교가 가능하더라도) 오류가 난다.
Swift에서 Bool은 대소비교가 불가능한 자료형이다.

---

# Nil과 Optional

Swift에는 null이 존재하지 않는다. Object-C에서 Swift로 넘어오면서 null과 nil 중 nil만 가져왔기 때문이다.
Swift에서 nil은 값이 없는 상태를 의미한다.

Optional은 값이 없을 수도 있다는 것을 의미한다. 예를 들어, 어떤 변수가 주어졌을 때 해당 변수가 값을 반드시 지닌다는 것을
보장하지 못하는 경우 Optional을 사용하여 표현한다.

```swift
var serverResponseCode: Int? = 404
serverResponseCode =  nil
```

?을 사용하여 Optional을 명시한 것을 알 수 있다. 그리고 nil의 경우 반드시 Optional 타입의 변수에만 사용할 수 있다.
또한 조건문 없이 간단하게 nil 여부를 판단하여 원하는 값을 변수에 저장할 수 있다.

```swift
let defaultColor = "red"
var userDefinedColor: String? // defaults to nil
var colorToUse = userDefinedColor ?? defaultColor
print(colorToUse) // result is "red"
```

위 코드는 userDefinedColor 변수가 nil이라면 뒤에 나오는 defaultColor의 값이 할당된다는 것을 의미한다.

---
