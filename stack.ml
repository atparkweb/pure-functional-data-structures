exception Empty

module type STACK = sig
  type 'a stack

  val empty    : 'a stack
  val is_empty : 'a stack -> bool
  val cons     : 'a -> 'a stack -> 'a stack
  
  val head     : 'a stack -> 'a       (* raises EMPTY if stack is empty *)
  val tail     : 'a stack -> 'a stack (* raises EMPTY if stack is empty *)
  val (++)     : 'a stack -> 'a stack -> 'a stack
end

module ListStack : STACK = struct
  type 'a stack = 'a list
  
  let empty = []
  let is_empty s = s = []
  let cons x s = x :: s
  let head = function [] -> raise Empty | h :: _ -> h
  let tail = function [] -> raise Empty | _ :: t -> t
  let (++) = (@)
end
