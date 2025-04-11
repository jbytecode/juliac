# juliac

Examples for Julia's generating small binary executables and libraries feature.

Note that this feature is still under development.

## My Initial Blog Post

https://jbytecode.github.io/juliac/

This blog post represents the requirements and command line arguments of the compiler.

## The Discourse Entry

https://discourse.julialang.org/t/where-is-juliac-developed/113004?u=jbytecode

This Discourse post the entry point of my journey.

## How to use this repo?

- The `download.sh` script downloads the required scripts from the Julia's GitHub repository. The latest versions of these scripts are already included in this repo. To update them, type

```shell
> ./download.sh
```

in the OS terminal.

### Hello World

```shell
> make hello
```

generates the `hello` binary using `hello.jl`. 

Please review the `Makefile` file to build other examples.

### Calling Julia Library Function from C 

The files `mylib.c`, `mylibcaller.c`, and `mylib.jl` represents calling Julia-generated dynamic library functions from within C. Here is the skeleton:

```julia
module MyLibrary

   Base.@ccallable function myfunc(x::Float64)::Float64
	   return x^2
   end 

end 
```

and here the caller:

```C
#include<stdio.h>

double myfunc(double);

int main(){
	double result = myfunc(5.0);
	printf("Result is %f\n", result);
	return 0;
}
```

where `myfunc` is defined in Julia. 

```Shell
> make mylibcaller
```

compiles Julia and C files together and generates the shared library and the caller executable.

### Note

I found the source code of `args2.jl` in a GitHub repo but I don't remember the link. Thank you for the author of this file, indeed, it's very helpful on how to get command line arguments using Julia's low level memory operations.