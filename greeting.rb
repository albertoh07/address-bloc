def greeting
	greeting = ''
	i = 0
	ARGV.each do |argv|
		if i==0
			greeting = argv
			i += 1
		else
			puts "#{greeting} #{argv}"
		end
	end
end

greeting
