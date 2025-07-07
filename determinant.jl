using LinearAlgebra

function (@main)(args::Vector{String})::Cint
    m = rand(Float64, 3, 3)
	for i in 1:3
		for j in 1:3
				print(Core.stdout, m[i, j], " ")
		end 
		println(Core.stdout)
	end 

	result = -Inf

	try
		result = det(m)
	catch e 
		println(Core.stdout, "Error occured")
		println(Core.stdout, typeof(e))
	end
    println(Core.stdout, "Determinant of matrix m is: ", result)
    return 0
end 

# This file currently throws a TypeError
# due to possibly a type unstability in the LinearAlgebra.det()




