require 'yaml'
require 'pry' 

     yml_data = YAML.load_file('array.yml')
     sum = 0
     str = []
     puts '--------Array---------'
     yml_data.each do |value|
		puts "#{value}"

		if value.instance_of?(Integer)
			sum = sum+value
		elsif value.instance_of?(String)
			str << "#{value}"
		end
	end 
	puts '--------SUM---------'
	puts "sum of arry is #{sum}"
	puts '--------STR----------'
	puts "String of arry #{str}"
	puts '---------------------'





