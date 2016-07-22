## Lists

```elm
[1,2,3,4]
-- [1,2,3,4] : List number

[1..4]
-- [1,2,3,4] : List number
```

In Elm, all list elements must have the same type.

```elm
1 :: [2,3,4]
-- [1,2,3,4] : List number

[1..4] ++ [5..6]
-- [1,2,3,4,5,6] : List number
```

```elm
import List

List.member 4 [1,2,3,4]
-- True : Bool
```
