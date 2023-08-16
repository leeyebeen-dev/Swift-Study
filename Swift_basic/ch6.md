# Set

Set은 중복을 허용하지 않고 순서도 없는 값의 집합이다.
Set 자료형은 값을 저장할 때 해시값을 사용한다.
따라서 사용자가 만든 커스텀 자료형을 Set에 저장하고 싶다면 반드시 Swift 표준 라이브러리의 Hashable Protocol을 확장해서 사용해야 한다.

Set의 사용법은 대체적으로 Array와 유사하다.
단, `insert` 메소드의 경우 Index가 존재하지 않는데, 이는 Set은 순서가 없는 집합이기 때문이다.

```swift
var letters = Set<Character>()
letters.insert("a")
letters = []
letters += ["b"] // error
```

원소를 삭제하는 `remove` 메소드의 경우 Array와 다소 차이가 있다.

```swift
let removedGenre = favoriteGenres.remove("Rock")
```

Set에서 remove는 Optional 값을 반환한다. 이는 삭제하려고 하는 값이 Set에 존재하지 않을 수 있기 때문이다.
따라서 remove를 사용할 때에는 반드시 Optional 여부를 잘 확인해주어야 한다.

특정 값의 존재 여부는 `contains(_:)` 메소드를 통해 확인할 수 있다.

```swift
if favoriteGenres.contains("Funk"){
  print("I get up on the good foot.")
}
```

만약 Set에 있는 값들을 정렬할 필요가 있을 경우, `sorted(by:)` 메소드를 통해 수행할 수 있다.

```swift
for genre in favoriteGenres.sorted(by: <){
  print(genre)
}
```

---

# Set 연산 수행

교집합, 합집합, 차집합 등의 연산을 제공하고 있다.

- 교집합 : `a.intersection(b)`
- 합집합 : `a.union(b)`
- 차집합 : `a.subtracting(b)`
- 대칭차 : `a.symmetricDifference(b)`

부분집합의 여부도 확인할 수 있다.

```swift
let houseAnimals: Set = ["Dog", "Cat"]
let farmAnimals: Set = ["Cow", "Chicken", "Sheep", "Dog", "Cat"]
let cityAnimals: Set = ["Pigeon", "Rat"]
houseAnimals.isSubset(of: farmAnimals) // true
farmAnimals.isSuperset(of: houseAnimals) // true
farmAnimals.isDisjoint(with: cityAnimals) // true
```
