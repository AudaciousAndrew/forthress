( collatz conjure )
: cltz
	dup 2 < not
	if 
		repeat
			dup 2 % 0 = if dup 2 / else dup 3 * 1 + then
			dup 1 = 
		until
	then
;


