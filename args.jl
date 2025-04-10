module MyApp


Base.@ccallable function main()::Cint
	#ARGS = String[unsafe_string(unsafe_load(argv, i)) for i in 1:argc]
	L = length(ARGS)
	println(Core.stdout, "Length of args is $L")
	println(Core.stdout, "Here is the list of command line arguments: ")
	for i in 1:L
		println(Core.stdout, ARGS[i])
	end 
	return 0
end

end # End of module MyApp
