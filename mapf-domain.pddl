(define (domain mapf)
    (:requirements :strips :typing)
    (:types
        vertex agent - object
    )
    (:predicates
        (at ?a - agent ?b - vertex)
        (occupied ?a - vertex)
        (adjacent ?a - vertex ?b - vertex)
    )
    (:action move
        :parameters (?A - agent ?ORIG - vertex ?DEST - vertex )
        :precondition (and
            (at ?A ?ORIG)
            (not (occupied ?DEST))
            (adjacent ?ORIG ?DEST)
        )
        :effect (and
            (at ?A ?DEST)
            (not (occupied ?ORIG))
            (not (at ?A ?ORIG))
            (occupied ?DEST)
        )
    )
)