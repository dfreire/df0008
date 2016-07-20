# Elm Succinctly

## Table of Contents

* [Comments](#1-comments)
* [Booleans](#2-booleans)
* [Numbers](#3-numbers)
* [Strings](#4-strings)
* [Chars](#5-chars)
* [Lists](#6-lists)
* [Records](#7-records)
* [Hello World](#99-hello-world)

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

