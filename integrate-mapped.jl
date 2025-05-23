
function f(x::Float64)::Float64
	return (1/sqrt(2*pi)) * exp(-0.5 * x * x)
end

function integrate(f::Function, a::Float64, b::Float64, eps::Float64)::Float64
	return map(x -> f(x)*eps, a:eps:b) |> sum
end 

function (@main)(args::Vector{String})::Cint
	result = integrate(f, -1.96, 1.96, 0.00001)
	println(Core.stdout, result)
	return 0
end

