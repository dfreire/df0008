# Elm Succinctly

## Table of Contents

* [Comments](#comments)
* [Booleans](#booleans)
* [Numbers](#numbers)
* [Strings](#strings)
* [Chars](#chars)
* [Lists](#lists)
* [Records](#records)
* [Maybe](#maybe)
* [Hello World](#hello-world)

## Comments

```elm
-- single line
```

```elm
{- a multiline comment
   {- can be nested -}
-}
```

```elm
-- trick: removing the } in the next line will comment the remaining code
{--}
add x y = x + y
--}
```



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

## Booleans and Boolean Operations

```elm
True
-- True : Bool

False
-- False : Bool
```

Elm has no concept of truthy and falsy values.

```elm
True && True
-- True : Bool

True || False
-- True : Bool

(True || False) && False
-- False : Bool

not True
-- False : Bool
```

## Numbers

```elm
42
-- 42 : number

3.14
-- 3.14 : Float
```

In Elm, a `number` is either an `Int` or a `Float`.

```elm
2 + 5
-- 7 : number

3 * 2
-- 6 : number

2 + 5 - 3 * 2
-- 1 : number

(2 + 5 - 3) * 2
-- 8 : number

9 / 2
-- 4.5 : Float

9 % 2
-- 1 : Int

9 // 2
-- 4 : Int

4^2
-- 16 : number

Basics.round 3.14
-- 3 : Int
```

## Strings

```elm
"Hello"
-- "Hello" : String

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

## Chars

```elm
'a'
-- 'a' : Char
```

```elm
import Char

Char.toCode 'a'
-- 97 : Char.KeyCode

Char.toCode '\r'
-- 13 : Char.KeyCode
```

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

## Records

```elm
```



## Hello World

Create a file called `Main.elm` with the content:

```elm
-- declare a module called `Main` exposing everything to the external world
module Main exposing (..)

-- import the `text` function from the `Http` module (present in the `elm-lang/html` package)
import Html exposing (text)

-- output a text to be rendered in the html body
main =
    text "Hello, World!"
```

Because we are using the `elm-lang/html` package, we need to install it:

```bash
$ elm-package install -y elm-lang/html
```

`-y` tells the installer to reply 'yes' to all prompts.

To see the result in a webpage, we need to start elm-reactor:

```bash
$ elm-reactor
```

and then open <http://localhost:8000/Main.elm>

