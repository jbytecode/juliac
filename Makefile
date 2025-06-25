clean:
	rm -f hello
	rm -f integrate
	rm -f integrate-mapped
	rm -f determinant
	rm -f mylibcaller.o 
	rm -f mylibcaller
	rm -f libmylib.so 
	rm -f args 
	rm -f args2 
	rm -f readline 
	rm -f montecarlo
	rm -f estimatepi
	rm -f printstyled 

hello: hello.jl
	julia +nightly juliac.jl --experimental --output-exe hello --trim hello.jl


printstyled: printstyled.jl
	julia +nightly juliac.jl --experimental --output-exe printstyled --trim printstyled.jl

montecarlo: montecarlo.jl
	julia +nightly juliac.jl --experimental --output-exe montecarlo --trim montecarlo.jl

estimatepi: estimatepi.jl
	julia +nightly juliac.jl --experimental --output-exe estimatepi --trim estimatepi.jl

args: args.jl
	julia +nightly juliac.jl --experimental --output-exe args --trim  args.jl

args2: args2.jl
	julia +nightly juliac.jl --experimental --output-exe args2 --trim  args2.jl

readline: readline.jl
	julia +nightly juliac.jl --experimental --output-exe readline --trim readline.jl

integrate: integrate.jl
	julia +nightly juliac.jl --experimental --output-exe integrate --trim integrate.jl

integrate-mapped: integrate-mapped.jl
	julia +nightly juliac.jl --experimental --output-exe integrate-mapped --trim integrate-mapped.jl

determinant: determinant.jl 
	julia +nightly juliac.jl --experimental --output-exe determinant --trim determinant.jl

libmylib.so: mylib.jl
	julia +nightly juliac.jl --experimental --output-lib libmylib --trim --compile-ccallable mylib.jl

mylibcaller.o: mylibcaller.c
	gcc -c -fPIC mylibcaller.c -o mylibcaller.o

mylibcaller: mylibcaller.o libmylib.so
	gcc mylibcaller.o libmylib.so -L. -lmylib -Wl,-rpath=. -o mylibcaller 
