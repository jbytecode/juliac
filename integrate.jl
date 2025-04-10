module IntegrationExample 

function f(x::Float64)::Float64
	return (1/sqrt(2*pi)) * exp(-0.5 * x * x)
end

function integrate(f::Function, a::Float64, b::Float64, eps::Float64)::Float64
	mysum = 0.0
	start = a
	while start <= b
		mysum += f(start) * eps 
		start += eps
	end 
	return mysum
end 

Base.@ccallable function main()::Cint
	result = integrate(f, -1.96, 1.96, 0.00001)
	println(Core.stdout, result)
	return 0
end

end # End of module IntegrationExample
