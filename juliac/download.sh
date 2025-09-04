#!/bin/bash

rm -f juliac.jl
rm -f juliac-buildscript.jl
rm -f julia-config.jl
rm -f juliac-trim-base.jl
rm -f juliac-trim-stdlib.jl
rm -f Artifacts.toml
rm -f abi_export.jl

wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/juliac.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/juliac-buildscript.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/julia-config.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/juliac-trim-base.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/juliac-trim-stdlib.jl
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/Artifacts.toml
wget -nc https://raw.githubusercontent.com/JuliaLang/julia/refs/heads/master/contrib/juliac/abi_export.jl

mv julia-config.jl ../julia-config.jl
