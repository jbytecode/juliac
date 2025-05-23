using LinearAlgebra

function (@main)(args::Vector{String})::Cint
    m = rand(Float64, 10, 10)
    result = det(m)
    println(Core.stdout, "Determinant of matrix m is: ", result)
    return 0
end 



# To compile the code:
# julia +nightly juliac.jl --output-exe determinant --trim determinant.jl

# The output is 
# Determinant of matrix m is: 0.0013344393167882141

# Time required to run the executable
# time ./determinant
# ________________________________________________________
# Executed in   40.33 millis    fish           external
#    usr time   27.39 millis    0.00 micros   27.39 millis
#    sys time   12.58 millis  613.00 micros   11.96 millis
# 
# File size: 1,857,800 bytes (1.77 MBs)
