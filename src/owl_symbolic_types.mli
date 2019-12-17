(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

type number_type =
  | SNT_Noop
  | SNT_Float
  | SNT_Double
  | SNT_Complex32
  | SNT_Complex64
  | SNT_Bool
  | SNT_String
  | SNT_Int8
  | SNT_Int16
  | SNT_Int32
  | SNT_Int64
  | SNT_Uint8
  | SNT_Uint16
  | SNT_Uint32
  | SNT_Uint64
  | SNT_Float16
  | SNT_SEQ of number_type

val number_type_to_string : number_type -> string

type tensor =
  { dtype : number_type
  ; shape : int array
  ; str_val : string array option
  ; flt_val : float array option
  ; int_val : int array option
  ; raw_val : bytes option
  }

type pad =
  | SAME_UPPER
  | SAME_LOWER
  | VALID
  | PAD of int array

val make_tensor
  :  ?dtype:number_type
  -> ?flt_val:float array
  -> ?int_val:int array
  -> ?str_val:string array
  -> ?raw_val:bytes
  -> int array
  -> tensor

val get_tensor_dtype : tensor -> number_type

type activation =
  | Relu
  | Tanh
  | Sigmoid
  | Affine
  | LeakyRelu
  | ThresholdedRelu
  | ScaledTanh
  | HardSigmoid
  | Elu
  | Softsign
  | Softplus

val activation_to_string : activation -> string

type attrvalue =
  | ATTR_Nil
  | ATTR_Int of int
  | ATTR_Bool of bool
  | ATTR_Type of number_type
  | ATTR_Float of float
  | ATTR_Shape of int array
  | ATTR_String of string
  | ATTR_Tensor of tensor
  | ATTR_Array of attrvalue array
  | ATTR_NameArray of
      { name : string
      ; attr : (string * attrvalue) array
      }

val get_attrvalue_int : attrvalue -> int

val get_attrvalue_float : attrvalue -> float

val get_attrvalue_type : attrvalue -> number_type

val get_attrvalue_shape : attrvalue -> int array

exception TYPE_CHECK of string

exception INVALID_NAME of string
