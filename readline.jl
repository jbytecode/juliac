
function (@main)(args::Vector{String})::Cint
	println(Core.stdout, "Enter text: ")
	s::String = readline(Core.stdin)
	println(Core.stdout, s)
	return 0
end

