let ma_fonction x y =
  x + y

let () =
  let a = int_of_string Sys.argv.(1) in
  let b = int_of_string Sys.argv.(2) in
  Printf.printf "%d + %d = %d\n" a b (ma_fonction a b)