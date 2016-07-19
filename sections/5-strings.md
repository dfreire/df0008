## 5. Strings

```elm
"Hello"
-- "Hello" : String

-- multi-line String
"""
A multi-line String
can contain "quotation marks".
"""
```

In Elm, strings are always enclosed in double quotes.

```elm
"Hello, " ++ "World!"
-- "Hello, World!" : String
```

```elm
import String

String.isEmpty ""
-- True : Bool

String.reverse "stressed"
-- "desserts" : String
```
