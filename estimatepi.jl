module EstimatetionOfPi

function estimatepi(samples::UInt64)::Float64
    n = UInt64(0)
    for i = 1:samples
        x = rand()
        y = rand()
        if x^2 + y^2 < 1
            n += 1
        end
    end
    return 4.0 * Float64(n) / Float64(samples)
end

Base.@ccallable function main()::Cint
    samples = UInt64(10^7)
    result1 = estimatepi(samples)
    println(Core.stdout, "1. Estimate of pi is $result1 with $samples samples")
    result2 = estimatepi(samples)
    println(Core.stdout, "2. Estimate of pi is $result2 with $samples samples")
    result3 = estimatepi(samples)
    println(Core.stdout, "3. Estimate of pi is $result3 with $samples samples")
    result = (result1 + result2 + result3) / 3.0
    println(Core.stdout, "Average of 3 estimates of pi is $result")
    return 0
end


end # End of module EstimatetionOfPi