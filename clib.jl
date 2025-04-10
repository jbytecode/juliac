module CLib 

Base.@ccallable function juliaadd(a::Float64, b::Float64)::Float64
    return a + b
end


end # end of module CLib
