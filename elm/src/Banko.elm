module Banko exposing (main)

import Browser
import Html exposing (Html, div, text)

main : Program () BankoBoard Msg
main =
    Browser.sandbox { view = view, update = update, init = initialBoard }


initialBoard : BankoBoard
initialBoard = []



-- MODEL


type alias BankoBoard = List Int




-- UPDATE


type Msg
    = MarkDrawn Int
    | MarkUndrawn Int
    | Reset



update : Msg -> BankoBoard -> BankoBoard
update msg model =
    case msg of
        MarkDrawn _ ->
            model
        MarkUndrawn _ ->
            model
        Reset -> 
            initialBoard

-- VIEW


view : BankoBoard -> Html Msg
view model =
    div [] [ text "Hello world" ]
