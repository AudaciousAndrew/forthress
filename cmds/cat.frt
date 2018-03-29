( loop writes ARG1 into heap )
: wloop
	 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
;
( concatenate s1 s2 > sout )
: cat
	dup rot dup rot count swap count 1 + + heap-alloc
	swap dup count wloop
	dup count rot + rot
	dup count 1 + wloop
	drop swap count - prints
;




