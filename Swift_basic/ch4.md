# String 인덱싱과 시간 복잡도

Swift는 독특한 인덱싱이 필요하다. String.Index라는 타입을 제공하고 있다.
String.Index의 경우 현재 위치의 앞과 뒤만 참조할 수 있다. 따라서 다른 언어에서 String 상의 특정 Index로 이동하는 작업을
Random Access를 통해 O(1)만에 수행할 수 있는 것과 다르게, Swift에서는 직접 하나씩 이동하므로 O(N)이 걸리게 된다.

다만 String의 맨 처음과 끝의 경우 startIndex, endIndex를 통해 접근할 수 있다.
만약 String 상의 특정 위치를 접근하고 싶으면, index 메소드를 통해 수행할 수 있다.

```swift
let greeting = "Guten Tag!"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // u
greeting[greeting.index(greeting.startIndex, offsetBy: 7)] // a
```

그리고 String 전체를 순회하는 경우 for-in loop를 사용한다.

```swift
for index in greeting.indices {
  print("\(greeting[index])", terminator: " ")
}
```

---

# 문자의 삽입과 삭제

String에 문자를 삽입하는 경우 insert 메소드를 통해 수행할 수 있고, 삭제하는 경우 remove 메소드를 통해 수행할 수 있다.
만약 특정 범위의 문자들을 모두 삭제하는 경우 removeSubrange 메소드를 통해 수행할 수 있다.

insert, remove, removeSubrange 메소드는 RangeReplacableCollection protocol을 따르는 모든 타입에서
사용 가능하며, 대표적으로 String, Array, Dictionary 그리고 Set이 있다.

```swift
var hello = "hello"
hello.insert("!", at: hello.endIndex) // hello!
hello.insert(contentsOf: " there", at: hello.index(before: hello.endIndex))
// hello there!

hello.remove(at: hello.index(before: hello.endIndex)) //hello there
let range = hello.index(hello.endex, offsetBy: -6)..<hello.endIndex
hello.removeSubrange(range) // hello
```

---

# Substring 부분 문자열


Substring의 경우 String과 마찬가지로 메모리에 저장이 된다. 다만, 성능 향상을 위해 Substring의 경우 저장된
메모리 공간이 재활용될 수 있다. 따라서 자주, 오래 사용되어야 한느 경우에는 String으로 저장하는 것이 바람직하다.

```swift
var greetings = "Hello, world!"
let index = greetings.firstIndex(of: ",")?? greeting.endIndex
let beginning = greetings[..<index] // Hello
let newString = String(beginning)
```

---

# Prefix and Suffix Equality

Swift에서는 String 내에 특정 값이 존재하는지를 확인하는 메소드를 제공한다.
hasPrefix의 경우 해당 String이 특정 값으로 시작하는지를 반환하고, hasSuffix의 경우 해당 String이 특정 값으로
끝나는지를 반환한다.

```swift
let romeoAndJuliet = "Act 1 Scene 1: Verona, A public place"
print(romeoAndJuliet.hasPrefix("Act 1")) // true
print(romeoAndJuliet.hasPrefix("Scene 1")) //false
print(romeoAndJuliet.hasSuffix("place") // true
```
