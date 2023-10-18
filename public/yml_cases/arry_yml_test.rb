require 'yaml'
require 'pry' #ya he batati ha binding.pry kya ha 

     yml_data = YAML.load_file('arry.yml')
     sum = 0
     yml_data.each do |value|
		puts "#{value}"
		sum = sum+value
	end 
	puts "sum of arry is #{sum}"



