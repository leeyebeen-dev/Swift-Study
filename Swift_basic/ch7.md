# Dictionary

Dictionary는 key와 value의 쌍들의 집합이다.
Dictionary 역시 Set과 마찬가지로 순서가 없으며, key의 경우 중복을 허용하지 않는다.

Dictioinary의 key와 value는 자료형이 동일하지 않아도 된다.
따라서 선언할 때 key와 value의 자료형을 명시해주어야 한다.

```swift
var namesOfIntegrs : [Int: String] = [:]
namesOfIntegrs[16] = "sixteen"
namesOfIntegrs = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", 'DUB": "Dublin"]
```

Dictionary의 value는 key를 통해 접근할 수 있다. 이때 []를 통해 접근하고 값을 바꿀 수 있다.

```swift
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
```

그리고 Dictionary 자료형은 updateValue(_:, forKey:) 메소드를 통해서도 특정 key에 대응하는 value를 바꿀 수 있다. 이때 updateValue는 기존 값을 반환하게 된다.

```swift
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
  print("The old value for DUB was \(oldValue).")
}
```

key와 value 쌍을 제거하는 방법은 2가지가 있다. 첫 번째는 []를 통해 접근하여 nil 값을 할당하는 것이고, 두 번째는 removeValue(forKey:) 메소드를 사용하는 것이다. 이때 removeValue 메소드는 삭제된 값을 반환하게 된다.

```swift
airports["DUB"] = nil

if let removedValue = airports.removeValue(forKey: "DUB"){
  print(removedValue)
}
```

Dictionary를 순회할 때는 Array, Set과 마찬가지로 for-in loop를 사용할 수 있다.
단, Dictionary는 기본적으로 key와 value가 쌍을 이루므로, 이를 Tuple로써 반환해준다.
만약 key 혹은 value만 순회하고 싶다면, keys와 values으로 접근할 수 있다.

```swift
for (airportCode, airportName) in airports {
  print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
  print("Airport code: \(airportCode)")
}

for airportName in airports.values.sorted(by: <){
  print("Airport name: \(airportName)")
}
```

만약 key 혹은 value들만 따로 Array로 저장하고 싶다면 아래와 같이 수행할 수 있다.

```swift
let airportCodes = [String](airports.keys)
let airportNames = Array<String>(airports.values)
```
