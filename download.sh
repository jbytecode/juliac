#!/bin/bash

rm -f juliac.jl
rm -f juliac-buildscript.jl
rm -f julia-config.jl
rm -f juliac-trim-base.jl
rm -f juliac-trim-stdlib.jl

wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac-buildscript.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/julia-config.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac-trim-base.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac-trim-stdlib.jl


