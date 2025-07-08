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

JULIAC_SCRIPT=./juliac/juliac.jl
JULIA=julia +nightly
FLAGS=--experimental --trim

hello: hello.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe hello hello.jl

integrate: integrate.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe integrate integrate.jl

printstyled: printstyled.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe printstyled printstyled.jl

montecarlo: montecarlo.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe montecarlo montecarlo.jl

estimatepi: estimatepi.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe estimatepi estimatepi.jl

args: args.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe args args.jl

readline: readline.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe readline readline.jl

integrate-mapped: integrate-mapped.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-exe integrate-mapped integrate-mapped.jl

determinant: determinant.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS)  --output-exe determinant determinant.jl

libmylib.so: mylib.jl
	$(JULIA) $(JULIAC_SCRIPT) $(FLAGS) --output-lib libmylib --compile-ccallable mylib.jl

mylibcaller.o: mylibcaller.c
	gcc -c -fPIC mylibcaller.c -o mylibcaller.o

mylibcaller: mylibcaller.o libmylib.so
	gcc mylibcaller.o libmylib.so -L. -lmylib -Wl,-rpath=. -o mylibcaller
