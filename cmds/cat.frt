: cat 
	dup rot dup rot count swap count + heap-alloc
	swap dup count 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
	dup count rot + rot
	dup count 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
	drop swap count - prints
;

: catheap 
	dup rot dup rot count swap count + heap-alloc .S
;

: cat1loop 
	swap dup count 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
;

: catmid 
	dup count rot + rot
;

: cat2loop
	dup count 0 do dup r@ + c@ rot r@ + dup rot swap c! r@ - swap loop
;

