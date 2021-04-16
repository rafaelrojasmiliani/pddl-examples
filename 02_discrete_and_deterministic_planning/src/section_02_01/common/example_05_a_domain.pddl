(define (domain knight_move_domain)
(:requirements :negative-preconditions :strips :typing)
(:types ;; this is required, if not we have segmentation fault
	waypoint  
	robot
)
(:predicates
    (is_at ?cell - waypoint)
    (valid_move ?from ?to - waypoint)
)
(:action move
    :parameters (?from ?to - waypoint)
    :precondition (and (is_at ?from) (valid_move ?from ?to))
    :effect (and (not (is_at ?from)) (is_at ?to))
)
)
