# Collection Types

Swift에서는 Array, Set 그리고 Dictionary 총 3가지의 Collection type들을 제공한다.
Array의 경우 순서가 있는 값들의 집합이고, Set의 경우 중복을 허용하지 않고 순서가 없는 값들의 집합이며,
Dictionary의 경우 순서가 없는 Key-Value 쌍의 집합이다.

---

# Array

Array의 경우 순서가 존재하는 값들의 집합이다. 따라서 같은 값이 다른 위치에 중복으로 나타날 수 있다.
Array는 다음과 같이 선언할 수 있다.

```swift
var someInts: [Int] = []
// var someInts: Array<Int> = []
```

그리고 `append` 메소드를 통해 값을 추가할 수 있으며, += 연산자를 통해서 Array를 추가할 수도 있다.
초기화를 원하는 경우 빈 Array를 대입하면 된다.

```swift
someInts.append(3)  // [3]
someInts += [4,5]    // [3, 4, 5]
someInts = [] // []
```

만약 Array를 선언함과 동시에 특정 값들로 채우고 싶다면, `repeating`과 `count` 인자를 통해 원하는 값들로 
채울 수 있다. 그리고 두 Array를 합쳐 새로운 Array도 생성할 수 있다.

```swift
var threeDoubles = Array(repeating: 0.0, count: 3)
// [0.0, 0.0, 0.0]

var twoDoubles = Array(repeating: 2.5, count: 2)
// [2.5, 2.5]

var fiveDoubles = threeDoubles + twoDoubles
// [0.0, 0.0, 0.0, 2.5, 2.5]
```

Array는 특정 위치의 값을 접근하기 위해 정수형 Index를 사용할 수 있으며, 특정 범위의 값들을 한 번에 
접근할 때는 `Array[start...end]`를 통해 수행할 수 있다.

```swift
var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList[0] = "Six eggs" // ["Six eggs", "Milk"]
shoppingList[0...1] = ["Tomato", "Noodle"] // ["Tomato", "Noodle"]

shoppingList[shoppingList.endIndex...] = ["Banana", "Apple"]
// ["Tomato", "Noodle", "Banana", "Apple"]
```

여기서 특이한 점은, `Array[endIndex...] = [..]`와 같이 작성할 경우 마치 값을 추가하는 것처럼 동작한다.

만약 특정 위치에 값을 추가하고 싶은 경우, `insert(_:, at: )` 메소드를 통해 수행할 수 있다.
그리고 삭제하고 싶은 경우에는 `remove(at:)` 메소드를 통해 수행할 수 있다.
이때 remove 메소드의 경우 삭제한 값을 반환한다.
이외에도 removeFirst, removeLast 등 다양한 메소드들이 있다.

```swift
shoppingList.insert("Maple Syrup", at: 0) // ["Maple Syrup", ...]
let mapleSyrup = shoppingList.remove(at: 0) // "Maple Syrup"
```

Array를 순회하는 경우 for-in-loop을 통해 쉽게 가능하다. 만약 Index와 값 모두가 필요한 경우, enumerated 
메소드를 통해 수행할 수 있다. enumerated 메소드의 경우 값과 해당 값의 Index를 Tuple의 형태로 반환한다.

```swift
for item in shoppingList {
  print(item)
}

for (index, value) in shoppingList.enumerated() {
  print("Item \(index + 1): \(value)")
}
```
