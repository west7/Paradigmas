Object subclass: Progression [
    | r a |
    Progression class >> reason: R init: A [
        | x |
        x := super new . x setReason: R . x setInit: A . ^x
    ]

    setReason: R [
        r := R
    ]

    setInit: A [
        a := A
    ]

    elementsArit: n [
        | result | 
        result := Array new: n .
        1 to: n do: [:i | result at: i put: i-1*r+a] . ^result
    ]

    elementsGeo: n [
        | result |
        result := Array new: n .
        1 to: n do: [:i | result at: i put: (r raisedToInteger: i-1) * a] .
        ^result
    ]
]

p := Progression reason: 2 init: 5 .
(p elementsArit: 5) printNl .
(p elementsGeo: 5) printNl