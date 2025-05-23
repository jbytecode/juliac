function normal(x::Float64)::Float64
	return (1 / sqrt( 2 * pi)) * exp(-0.5 * x * x)
end

function integrate(f::Function, a::Float64, b::Float64, n::Int64)::Float64
    s = 0.0
    for _ in 1:n
        s += f(rand(Float64) * (b-a) + a)
    end 
    return (b-a) *s / n    
end 

function (@main)(args::Vector{String})::Cint
	result = integrate(normal, -1.96, 1.96, 1000000)
	println(Core.stdout, result)
	return 0
end

