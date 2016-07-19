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
True  : Bool
False : Bool
```

Elm has no concept of truthy and falsy values.

```elm
True && True -- True
True || False -- True
(True || False) && False -- False
not True -- False
```

## 4. Numbers

## 5. Strings

## 6. Lists

## 7. Records

