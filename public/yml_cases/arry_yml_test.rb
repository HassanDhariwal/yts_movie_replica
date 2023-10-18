require 'yaml'
require 'pry' 

     yml_data = YAML.load_file('arry.yml')
     sum = 0
     yml_data.each do |value|
		puts "#{value}"
		if value.instance_of?(Integer)
			sum = sum+value
		elsif value.instance_of?(Integer)
			puts "ignore"
		end
	end 
	puts "sum of arry is #{sum}"



