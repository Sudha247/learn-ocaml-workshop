open! Base

(* Now let's write a function to multiply together the elements of a list. *)
let rec product xs =
  match xs with
  | [] -> 1
  | x::xxs -> x * (product xxs)
;;

let%test "Testing product..." = Int.equal 1 (product [])
let%test "Testing product..." = Int.equal 55 (product [ 55 ])
let%test "Testing product..." = Int.equal 25 (product [ 5; -5; 1; -1 ])
let%test "Testing product..." = Int.equal 25 (product [ 5; 5; 1; 1 ])
