(define (problem mapf-problem1)
    (:domain mapf)
    (:requirements :strips)
    (:objects
        v1 v2 v3 v4 v5 - vertex
        a1 a2 - agent)
    (:init
        (at a1 v3)
        (at a2 v5)
        (adjacent v1 v2)
        (adjacent v2 v1)
        (adjacent v1 v3)
        (adjacent v3 v1)
        (adjacent v2 v4)
        (adjacent v4 v2)
        (adjacent v3 v4)
        (adjacent v4 v3)
        (adjacent v4 v5)
        (adjacent v5 v4)
        (occupied v3)
        (occupied v5)
        )
    (:goal (and
     (at a1 v1)
     (at a2 v2)
     )
    )
)