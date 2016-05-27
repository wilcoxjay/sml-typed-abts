signature LCS_CLOSURE =
sig
  structure Abt : ABT

  type 'a metaenv = 'a Abt.Metavariable.Ctx.dict
  type 'a varenv = 'a Abt.Variable.Ctx.dict
  type symenv = Abt.symbol Abt.Symbol.Ctx.dict

  datatype 'a closure =
    <: of 'a * (Abt.abs closure metaenv * symenv * Abt.abt closure varenv)

  val map : ('a -> 'b) -> 'a closure -> 'b closure
end