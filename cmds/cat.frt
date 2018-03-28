( loop writes ARG1 into heap )
: wloop
	dup count 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
;
( concatenate s1 s2 > sout )
: cat
	dup rot dup rot count swap count + heap-alloc
	swap wloop
	dup count rot + rot
	wloop
	drop swap count - prints
;




