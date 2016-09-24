module Hello exposing (main)

import Html exposing (Html)
import Mouse


main : Program {}
main =
    { init = view { x = 0, y = 0 }
    , input = Mouse.moves
    , view = view
    }
        |> Html.App.programWithFlags


view : Mouse.Position -> Html Mouse.Position
view { x, y } =
    Html.div []
        [ Html.text
            ("x = "
                ++ (toString x)
                ++ "y = "
                ++ (toString y)
            )
        ]
