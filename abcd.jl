# Due to the Julia Discourse
# https://discourse.julialang.org/t/segmentation-fault-in-executable-after-compilation-with-juliac-including-trim-experimental-arguments/125303

module ABCD

function (@main)(args::Vector{String})::Cint
    return 0
end

end # Module ABCD


import .ABCD.main

