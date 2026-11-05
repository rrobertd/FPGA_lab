### Mistake

During working on this project I made funny mistake:

`out = en ? in : 1'b1` - as you can see insted of the `1'bz` I wrote `1'b1` 

This lead to the fact that insted of the three-state gate I got mux with one input connected to the `1'b1`

Screenshots serve as a docummentation of this mistake.
