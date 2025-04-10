module MyLibrary

Base.@ccallable function myfunc(x::Float64)::Float64
	return x^2
end 

end 
