# Repeat-While

다른 언어에서 사용하는 **do-while** 구문을 Swift에서는 **repeat-while** 구문으로 제공한다.
작동 방식은 동일하다.

```swift
var index = 5
let finalIndex = 5
repeat{
  print("Current Index: \(index)") // 5
} while index < finalIndex
```

---

# Switch

if 조건문 같은 경우, Swift나 다른 언어나 비슷하다.
그런데 Switch의 경우에는 많은 차이점이 있다.
Swift의 Switch는 기본적인 동작 방식은 같지만, Implicit Fallthrough가 없다.

```swift
int i = 0
switch(i){
  case 0:
    cout << "i is 0\n";
  default:
    cout << "i is not 0";
}
```

일반적으로 Switch의 case는 break가 없으면 위 코드와 같이 그 아래 조건들에 대한 코드까지 모두 실행한다.
(마치 밑으로 떨어지는 것 같다고 해서 Swift에서는 Fallthrough라고 부르는 듯)

Swift에서는 break가 없어도 알아서 해당하는 case만 실행하고, Switch를 탈출한다.
(대신 Swift에서는 기존의 Switch와 똑같이 작동할 수 있는 fallthrough라는 키워드를 제공한다.)

```swift
let i = 0
switch(i) {
case 0:
	print("i is 0\n");
//  fallthrough
default:
	print("i is not 0");
}
/*
 result: 
	 i is 0
 */
```

case의 조건에는 다른 언어들보다 더 다양한 형태의 조건문을 넣을 수 있다.

- Range 범위를 조건에 넣을 수 있다.

```swift
let approximateCount = 62
let natualCount: String
switch approximateCount {
case 0:
    natualCount = "no"
case 1..<5:
    natualCount = "a few"
case 5..<12:
    natualCount = "several"
default:
    natualCount = "many"
}
print(natualCount) // many
```

- case문 내에 값을 할당 받을 수 있다.

```swift
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with an y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
```

- case 내에서 할당 받은 값을 이용하여 새로운 조건으로 만들 수 있다.

```swift
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
```
