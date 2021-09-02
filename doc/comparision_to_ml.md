# Notable Differences Between Standard ML and OCaml Syntax

*Purely Functional Data Structures* uses Standard ML for the exmamples. Here are
some differences to be aware of while reading *PFDS*

## Lazy Evaluation

### Standard ML

In Standard ML
	```
	(* suspend expression `e` *)
	(* `$` can be used as shorthand to suspend evaluation *)
	$e
	
	(* force evaluation *)
	fun force($x) = x
	```

In OCaml:
	
	```
	# suspend evaluations
	let lazyFn = lazy (doSomething)
	
	# force evaluation:
	Lazy.force lazyFn
	```
