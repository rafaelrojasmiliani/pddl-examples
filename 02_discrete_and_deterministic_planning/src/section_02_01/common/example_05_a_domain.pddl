(define (domain knight_move_domain)
(:requirements :negative-preconditions)
(:predicates
    (is_at ?cell)
    (valid ?from ?to)
)
(:action move
    :parameters (?from ?to)
    :precondition (and (is_at ?from) (valid ?from ?to))
    :effect (and (not (is_at ?from)) (is_at ?to))
)
)
