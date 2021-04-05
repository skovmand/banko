module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Set


main : Program () BankoBoard Msg
main =
    Browser.sandbox { view = view, update = update, init = initialBoard }


initialBoard : BankoBoard
initialBoard =
    Set.empty



-- MODEL


type alias BankoBoard =
    Set.Set Int



-- UPDATE


type Msg
    = MarkDrawn Int
    | MarkUndrawn Int
    | Reset


removeNumberFromBoard : Int -> BankoBoard -> BankoBoard
removeNumberFromBoard number board =
    Set.remove number board


addNumberToBoard : Int -> BankoBoard -> BankoBoard
addNumberToBoard number board =
    Set.insert number board


update : Msg -> BankoBoard -> BankoBoard
update msg model =
    case msg of
        MarkDrawn number ->
            addNumberToBoard number model

        MarkUndrawn number ->
            removeNumberFromBoard number model

        Reset ->
            initialBoard



-- VIEW


boardRows : List (List Int)
boardRows =
    [ List.range 1 10, List.range 11 20, List.range 21 30, List.range 31 40, List.range 41 50, List.range 51 60, List.range 61 70, List.range 71 80, List.range 81 90 ]


view : BankoBoard -> Html Msg
view drawnNumbers =
    div [ class "flex flex-col h-full" ] (List.map (\x -> bankoRow x drawnNumbers) boardRows)


bankoRow : List Int -> Set.Set Int -> Html Msg
bankoRow numbersInRow drawnNumbers =
    div [ class "flex flex-1 flex-row" ] (List.map (\x -> bankoCard x drawnNumbers) numbersInRow)


bankoCard : Int -> Set.Set Int -> Html Msg
bankoCard number drawnNumbers =
    if Set.member number drawnNumbers then
        div [ class "card drawn", onClick (MarkUndrawn number) ] [ text (String.fromInt number) ]

    else
        div [ class "card notDrawn", onClick (MarkDrawn number) ] [ text (String.fromInt number) ]
