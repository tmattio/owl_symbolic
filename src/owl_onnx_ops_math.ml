(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

module Add = struct
  type t =
    { mutable name : string
    ; mutable input : string list
    ; mutable output : string list
    }

  let op_type = "Add"
  let create name input output = { name; input; output }
  let type_constraints = []
  let doc_string = "Addition"
  let to_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let to_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
end

module Sub = struct
  type t =
    { mutable name : string
    ; mutable input : string list
    ; mutable output : string list
    }

  let op_type = "Sub"
  let create name input output = { name; input; output }
  let to_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let to_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
end

module Mul = struct
  type t =
    { mutable name : string
    ; mutable input : string list
    ; mutable output : string list
    }

  let op_type = "Mul"
  let create name input output = { name; input; output }
  let to_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let to_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
end

module Div = struct
  type t =
    { mutable name : string
    ; mutable input : string list
    ; mutable output : string list
    }

  let op_type = "Div"
  let create name input output = { name; input; output }
  let to_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_onnx = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let to_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
  let of_owl = raise Owl_exception.(NOT_IMPLEMENTED "onnx")
end
