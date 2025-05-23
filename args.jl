

function (@main)(args::Vector{String})::Cint
	if length(args) == 0
		println(Core.stdout, "No command line arguments provided.")
	else
		println(Core.stdout, "Command line arguments provided:")
		for arg in args
			println(Core.stdout, arg)
		end
	end
	return 0
end