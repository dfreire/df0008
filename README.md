# Elm Succinctly

## Table of Contents

* [Comments](#1-comments)
* [Hello World](#2-hello-world)
* [Booleans](#3-booleans)
* [Numbers](#4-numbers)
* [Strings](#5-strings)
* [Lists](#6-lists)
* [Records](#7-records)

## 1. Comments

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

## 2. Hello World

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

## 3. Booleans and Boolean Operations

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

## 4. Numbers

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
```

## 5. Strings

## 6. Lists

## 7. Records

```elm
```

