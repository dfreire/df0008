# Elm Succinctly

## Table of Contents

* [Comments](#1-comments)
* [Hello World](#2-hello-world)

## 1. Comments

```elm
-- single line
```

```elm
{- multiple lines
{- can be nested -}
-}
```

## 2. Hello World

```elm
-- declare a module called `Main` exposing everything to the external world
module Main exposing (..)

-- import the `text` function from the `Http` module (present in the elm-lang/html package)
import Html exposing (text)

-- output a text to be rendered in the html body
main =
    text "Hello, World!"

```
