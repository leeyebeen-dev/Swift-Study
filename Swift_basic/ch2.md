# Multiline String

Swift에서는 여러 줄을 포함하는 String 값을 선언하기 위해 """를 사용한다.

```swift
let quotation = """
"Was it a cat I saw?",
Alice said.
"""
```

만약 실제 값은 한 줄로 하고 싶은 경우 \ 백슬래시를 통해 구현할 수 있다.

```swift
let quotation = """
"Was it a cat I saw?", \
Alice said.
"""
```

---

# Empty String

공백 String은 아래와 같이 표현할 수 있다. 공백 문자열 값을 할당하여 표현할 수도 있고, String() 생성자를 통해 할당할 수도 있다.

```swift
var emptyString = ""
var anotherEmptyString = String()
```

그리고 String이 비어 있는지 empty 메소드를 통해 판단할 수 있다.

```swift
print(emptyString.isEmpty)
```

---

# String Mutability

Swift의 String은 변수로 선언한 경우, 변형이 가능하다.

```swift
var variableString = "Horse"
variableString += " and carriage"
```

---

# String의 타입

Swift에서 String의 타입은 value이다. 함수 혹은 메소드를 통해 String이 전달되는 경우, 즉 String 자료형을 복사하는 경우 참조가 아닌 실제 값이 복사된다.

```swift
var origin = "origin"
var copied = origin
origin = "modified"
print(copied)
```

---

# Character와 String

Swift에서 String을 구성하는 각 Character를 접근하기 위해 for-In loop를 사용할 수 있다. 그리고 Character의 경우 자료형을 명시해주어야 Character로써 사용할 수 있으며, 쌍따옴표를 사용해주어야 한다.

```swift
for character in "Dog!" {
 print(character)
}

let exclamationMark: Character = "!"
```

String은 Character 배열을 통해서도 생성할 수 있다.
이 경우 `String()` 에 인자로 배열을 전달해주면 된다.

```swift
let catCharacters: [Character] = ["c", "a", "t"]
let catString = String(catCharacters)
```

그리고 String 변수에 `append()` 메소드를 통해 Character 값을 추가할 수 있다.

```swift
var welcome = "Welcome"
welcome.append("!")
```
