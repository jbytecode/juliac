# juliac

Examples for Julia's generating small binary executables and libraries feauture.

Note that this feature is still under development.

## My Initial Blog Post

https://jbytecode.github.io/juliac/

## The Discourse Entry

https://discourse.julialang.org/t/where-is-juliac-developed/113004?u=jbytecode

### How to use this repo?

- The `download.sh` script downloads the required scripts from the Julia's GitHub repository. The latest versions of these scripts are already included in this repo. To update them, type

```shell
> ./download.sh
```

in the OS terminal.

### Hello World

```shell
make hello
```

generates the `hello` binary using `hello.jl`. 

### Note

I found the source code of `args2.jl` in a GitHub repo but I don't remember the link of this repo. Thank you for the author of this file, indeed, it's very helpful on how to get command line arguments using Julia's low level memory operations.