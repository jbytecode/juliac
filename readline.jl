module MyApp


Base.@ccallable function main()::Cint
	println(Core.stdout, "Enter text: ")
	s::String = readline(Core.stdin)
	println(Core.stdout, s)
	return 0
end

end # End of module MyApp
