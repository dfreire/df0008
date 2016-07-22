## Maybe

```elm
import List

List.head []
-- Nothing : Maybe.Maybe a

List.head [1, 2, 3]
-- Just 1 : Maybe.Maybe number
```

In Elm, `Maybe` is either `Nothing` or `Just value`.

When we try to get the first value of the empty list we obtain `Nothing`. Because the list is empty, Elm does not know the type of the elements of the string, so the type of `Nothing` is `Maybe a`, where `a` is an unknown type.

When we try to get the first value of the list of numbers, we obtain `Just 1`. Because in this case Elm knows the list items are numbers, the type of `Just 1` is `Maybe number`.


```elm
item = List.head [1, 2, 3]
-- Just 1 : Maybe.Maybe number

case item of
    Nothing -> "there's no value"
    Just value -> "there's a value"
-- "there's a value" : String
```
