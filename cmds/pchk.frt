: pchk
	dup 2 = not
	if dup 2 < not
	if dup 2 1 swap rot swap do if dup r@ % else 0 then loop
	 else 0 then else 1 then 
	 swap drop
;
