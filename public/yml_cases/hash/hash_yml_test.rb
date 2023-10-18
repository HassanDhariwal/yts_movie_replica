require 'yaml'
require 'pry'

sum = 0
str = {}

     yml_data = YAML.load_file('hash.yml')
      	puts "---------HASH-----------"
     yml_data.each do |key, value |
     	puts "key and value is :#{key} => #{value} "
     	# binding.pry
     	if value.instance_of?(String)
     		str [key] = value
     	elsif value.instance_of?(Integer)
     		puts "#{value}"
     		# binding.pry
    		sum = sum+value
     	end
 	end
 	puts "---------SUM-----------"
 	puts "sum of hash value is #{sum}"
 	puts "---------STR-----------"
 	puts "#{str}"


