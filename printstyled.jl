

function (@main)(args::Vector{String})::Cint
	printstyled(Core.stdout, "Hello, World!"; bold = true, color = :red)
	return 0
end

