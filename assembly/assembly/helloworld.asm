.data
	message db "Hello world", 0

.code

main:
	invoke StdOut, addr message
	invoke ExitProcess, 0
end Main