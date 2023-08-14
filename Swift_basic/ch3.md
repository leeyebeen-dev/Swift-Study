# Extended Grapheme Cluster 확장 자소 집합

Swift의 모든 Character 자료형은 하나의 Extended Grapheme Cluster을 표현한다.
여기서 Extended Grapheme Cluster는 하나 혹은 그 이상의 유니코드 Scalar로 구성되어 있다.
따라서 한글과 같은 복잡한 문자도 하나의 Character 값으로 유연하게 표현할 수 있다.

```swift
let precomposed: Character = "\u{D55C}" // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ㅎ, ㅏ, ㄴ
print("\{precomposed}, \{decomposed}") // 한, 한
```

분리형 자모음을 하나씩 이어 붙인 것 모두 Character로 저장이 가능하며, 출력할 경우 동일하게 나온다.
일반적으로 타 언어에서 문자 자료형은 한 개의 Scalar로 구성이 되는 것에 비해, Swift는 유니코드 문자를 유연하게
처리하기 위해 Extended Grapheme Cluster라는 방식을 사용하고 있음을 알 수 있다.

이런 특성으로 같은 문자를 표현하는 Character 값이라고 하더라도, 구성하고 있는 유니코드 Scalar의 차이에 따라
필요한 저장공간이 다를 수 있다. 이 때문에 Swift에서 Character 자료형은 값 저장을 위해 서로 다른 양의 메모리
공간을 사용할 수 있다.

```swift
var word = "안"
print("the length of word in \(word) is \(word.count)") // the length of word in 안 is 1
word += "\u{11AB}\u{11AB}" // ㄴㄴ
print("the length of word in \(word) is \(word.count)")
```

```python
word = '안'
print(f'the length of word in {word} is {len(word)}') # the length of word in 안 is 1
word += '\u11AB'
print(f'the length of word in {word} is {len(word)}') # the length of word in 안ᆫ is 2
```

String의 길이를 쟀을 때는 똑같이 나온다. 하지만 파이썬에서 실행했을 때는 다르게 나온다.

Swift에서는 String의 문자 개수를 구하기 위해서는 해당 String을 구성하고 있는 Extended Grapheme Cluster를
계산하기 전에는 불가능하다. 즉, String의 길이를 구하기 위해서는 반드시 전체를 순회해야한다.
따라서 Swift에서는 String의 길이를 구하는 메소드 count의 시간 복잡도는 O(N)이다.
