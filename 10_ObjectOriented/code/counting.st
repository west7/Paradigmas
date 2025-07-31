Object subclass: Couting [
    
    uniques: xs [
        | x |
       x := xs asSet .
       ^x size
    ]

    repeats: xs [
        | x c | 
        x := Set new .
        c := 0 .
        xs do: [:xi | (x includes: xi) ifTrue: [c := c + 1] ifFalse: [x add: xi]] .
        ^c
    ]

    mean: xs [
        | m sum |
        sum := 0 . 
        xs do: [:x | sum := sum + x] .
        m := sum/(xs size) .
        ^m
    ]
]

counting := Couting new . 
(counting uniques: #(1 2 2 3 4 5 5)) printNl . 
(counting repeats: #(1 2 2 3 4 5 5)) printNl .
(counting mean: #(10 2 6 5 3)) printNl 
