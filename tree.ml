module type TREE = sig
end

module BinaryTree : TREE = struct
  type 'a binary_tree =
    | Leaf
    | Node of 'a binary_tree * 'a * 'a binary_tree;;
end
