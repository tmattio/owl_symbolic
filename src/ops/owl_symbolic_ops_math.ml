(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

(* TODO: type restrain must be reflected here *)

open Owl_symbolic_types

module Int = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable value : int
    ; mutable out_shape : int array option
    }

  let op_type = "Int"
  let create name input attrs value = { name; input; attrs; value; out_shape = Some [||] }
end

module Float = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable value : float
    ; mutable out_shape : int array option
    }

  let op_type = "Float"
  let create name input attrs value = { name; input; attrs; value; out_shape = Some [||] }
end

module Complex = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable real : float
    ; mutable img : float
    ; mutable out_shape : int array option
    }

  let op_type = "Complex"

  let create name input attrs real img =
    { name; input; attrs; real; img; out_shape = None }
end

module Tensor = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable typ : sym_data_type
    ; mutable shape : int array
    ; mutable out_shape : int array option (* possible data types in  tensor *)
    ; mutable flt_val : float array option
    ; mutable int_val : int array option
    ; mutable str_val : string array option
    ; mutable complex_val : (float * float) array option
    }

  let op_type = "Tensor"

  let create
      ?(shape = [||])
      ?(typ = SDT_Float)
      ?(flt_val = None)
      ?(int_val = None)
      ?(str_val = None)
      ?(complex_val = None)
      name
      input
      attrs
    =
    { name
    ; input
    ; attrs
    ; typ
    ; shape
    ; out_shape = Some shape
    ; flt_val
    ; int_val
    ; str_val
    ; complex_val
    }
end

module ExpConst = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "ExpConst"
  let create name input attrs = { name; input; attrs; out_shape = Some [||] }
end

module Variable = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable typ : sym_data_type
    ; mutable shape : int array
    ; mutable out_shape : int array option
    }

  let op_type = "Variable"

  let create name input attrs typ shape =
    { name; input; attrs; typ; shape; out_shape = Some shape }
end

module Sin = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Sin"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Cos = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Cos"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Exp = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Exp"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Add = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Add"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
  let type_constraints = []
  let doc_string = "Addition"
end

module Sub = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Sub"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Mul = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Mul"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Div = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Div"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

module Pow = struct
  type t =
    { mutable name : string
    ; mutable input : string array
    ; mutable attrs : (string * attrvalue) array
    ; mutable out_shape : int array option
    }

  let op_type = "Pow"
  let create ?(out_shape = None) name input attrs = { name; input; attrs; out_shape }
end

(** Is `output` necessary? *)
