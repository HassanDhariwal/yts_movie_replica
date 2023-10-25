require 'yaml'
require 'pry'

sum = 0
str_hash = {}
int_hash = {}

     yml_data = YAML.load_file('hash.yml')
      	puts "---------HASH-----------"
     yml_data.each do |key, value |
     	puts "key and value is :#{key} => #{value} "
     	if value.instance_of?(String)
     		str_hash [key] = value
     	elsif value.instance_of?(Integer)
     		puts "#{value}"
     		int_hash [key] = value
    		sum = sum+value
     	end
 	end
 	puts "---------SUM-----------"
 	puts " Sum  hash values is = #{sum}"
 	puts "---------STR-----------"

 	puts " Sting hash value: #{str_hash}"
 	puts "---------INT-----------"
 	puts " Integer hash value: #{int_hash}"



