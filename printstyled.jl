module MyLogApp


Base.@ccallable function main()::Cint
	printstyled(Core.stdout, "Hello, World!"; bold = true, color = :red)
	return 0
end

end # End of module MyLogApp
