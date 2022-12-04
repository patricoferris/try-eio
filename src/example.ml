let print = {|let () = print_endline "Welcome to the OCaml Playground"|}

let eio =
  {|(* Discover more at https://github.com/ocaml-multicore/eio/
   and the incredible work to make this work in jsoo https://github.com/ocsigen/js_of_ocaml/pull/1340 *)
open Eio

let () =
  Eio_mock.Backend.run @@ fun _ ->
  Fiber.both
    (fun () -> Fiber.yield (); traceln "world!")
    (fun () -> traceln "Hello ")
|}
