module Nav exposing (main)

import Html exposing (..)
import Html.App exposing (..)
import Html.Events exposing (..)


main =
    beginnerProgram { model = "Hello", view = view, update = update }


view model =
    div []
        [ div [ onClick Home ]
            [ text "Home" ]
        , div
            [ onClick Posts ]
            [ text "Posts" ]
        , div
            [ onClick Contact ]
            [ text "Contact" ]
        , div [] [ text (toString model) ]
        ]


type Msg
    = Home
    | Posts
    | Contact


update msg model =
    case msg of
        Home ->
            "Home"

        Posts ->
            "Posts"

        Contact ->
            "Contact"
