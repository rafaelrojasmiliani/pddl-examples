def main():
    with open('example_05_a_problem.pddl', 'w') as writer:
        print('(define (problem knight_move_problem)', file=writer)
        print('(:domain knight_move)', file=writer)
        print('(:objects', file=writer)
        for i0 in range(1, 9):
            for j0 in range(1, 9):
                print('cell{:d}{:d}'.format(i0, j0), file=writer)
        print(')', file=writer)
        print('(:init', file=writer)
        print('(at cell11)', file=writer)
        m = 0
        for i0 in range(1, 9):
            for j0 in range(1, 9):
                for i1 in range(1, 9):
                    for j1 in range(1, 9):
                        if abs((i0 - i1) * (j0 - j1)) == 2:
                            print("(valid cell{:d}{:d} cell{:d}{:d})".format(
                                i0, j0, i1, j1), file=writer)
                            m += 1

        print(')', file=writer)
        print('total moves {:d}'.format(m))
        print('(:goal', file=writer)
        print('(at cell88)', file=writer)
        print(')', file=writer)
        print(')', file=writer)


if __name__ == "__main__":
    main()
